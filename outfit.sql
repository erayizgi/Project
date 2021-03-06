USE [outfit]
GO
/****** Object:  Table [dbo].[users]    Script Date: 12/21/2016 15:17:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[user_id] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](50) NOT NULL,
	[mail] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[users] ON
INSERT [dbo].[users] ([user_id], [username], [mail], [password]) VALUES (1, N'erayizgi', N'erayizgi@gmail.com', N'123456')
INSERT [dbo].[users] ([user_id], [username], [mail], [password]) VALUES (2, N'berkaykiratli', N'berkaykiratli@hotmail.com', N'123456')
SET IDENTITY_INSERT [dbo].[users] OFF
/****** Object:  Table [dbo].[outfits]    Script Date: 12/21/2016 15:17:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[outfits](
	[outfit_id] [int] IDENTITY(1,1) NOT NULL,
	[outfit_name] [nvarchar](255) NOT NULL,
	[color] [nchar](10) NOT NULL,
	[brand] [nvarchar](50) NOT NULL,
	[price] [decimal](18, 2) NOT NULL,
	[outfit_type_id] [int] NOT NULL,
	[outfit_img] [text] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[outfits] ON
INSERT [dbo].[outfits] ([outfit_id], [outfit_name], [color], [brand], [price], [outfit_type_id], [outfit_img]) VALUES (1, N'Red Shirt', N'Red       ', N'(Unknown)', CAST(15.00 AS Decimal(18, 2)), 1, N'red_shirt.png')
INSERT [dbo].[outfits] ([outfit_id], [outfit_name], [color], [brand], [price], [outfit_type_id], [outfit_img]) VALUES (2, N'Man''s Jean 1', N'Blue      ', N'Levi''s', CAST(30.00 AS Decimal(18, 2)), 2, N'mans_jean1.png')
INSERT [dbo].[outfits] ([outfit_id], [outfit_name], [color], [brand], [price], [outfit_type_id], [outfit_img]) VALUES (5, N'Red Chuck Taylor', N'Red       ', N'Converse', CAST(50.00 AS Decimal(18, 2)), 3, N'red_chuck_taylor.png')
INSERT [dbo].[outfits] ([outfit_id], [outfit_name], [color], [brand], [price], [outfit_type_id], [outfit_img]) VALUES (6, N'Dark Red Chuck Taylor', N'Dark Red  ', N'Converse', CAST(50.00 AS Decimal(18, 2)), 3, N'darkred_chuck_taylor.png')
INSERT [dbo].[outfits] ([outfit_id], [outfit_name], [color], [brand], [price], [outfit_type_id], [outfit_img]) VALUES (7, N'Womens Shirt', N'Purple    ', N'(Unknown)', CAST(30.00 AS Decimal(18, 2)), 1, N'women_red_shirt.png')
INSERT [dbo].[outfits] ([outfit_id], [outfit_name], [color], [brand], [price], [outfit_type_id], [outfit_img]) VALUES (8, N'Womens Jean', N'Blue      ', N'Levi''s', CAST(30.00 AS Decimal(18, 2)), 2, N'skinny_jean.png')
INSERT [dbo].[outfits] ([outfit_id], [outfit_name], [color], [brand], [price], [outfit_type_id], [outfit_img]) VALUES (9, N'Necklace', N'Silver    ', N'(Unknown)', CAST(100.00 AS Decimal(18, 2)), 5, N'necklace.png')
INSERT [dbo].[outfits] ([outfit_id], [outfit_name], [color], [brand], [price], [outfit_type_id], [outfit_img]) VALUES (10, N'Women Shoes', N'Beige     ', N'(Unknown)', CAST(100.00 AS Decimal(18, 2)), 3, N'women_shoes.png')
INSERT [dbo].[outfits] ([outfit_id], [outfit_name], [color], [brand], [price], [outfit_type_id], [outfit_img]) VALUES (11, N'Formal White Shirt', N'White     ', N'(Unknown)', CAST(80.00 AS Decimal(18, 2)), 1, N'formal_shirt.png')
INSERT [dbo].[outfits] ([outfit_id], [outfit_name], [color], [brand], [price], [outfit_type_id], [outfit_img]) VALUES (12, N'Formal Blue Pants', N'Blue      ', N'(Unknown)', CAST(40.00 AS Decimal(18, 2)), 2, N'formal_pants.png')
INSERT [dbo].[outfits] ([outfit_id], [outfit_name], [color], [brand], [price], [outfit_type_id], [outfit_img]) VALUES (13, N'Formal Shoes', N'Brown     ', N'(Unknown)', CAST(100.00 AS Decimal(18, 2)), 3, N'formal_shoes.png')
SET IDENTITY_INSERT [dbo].[outfits] OFF
/****** Object:  Table [dbo].[outfit_types]    Script Date: 12/21/2016 15:17:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[outfit_types](
	[type_id] [int] IDENTITY(1,1) NOT NULL,
	[type_name] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[outfit_types] ON
INSERT [dbo].[outfit_types] ([type_id], [type_name]) VALUES (1, N'Tops')
INSERT [dbo].[outfit_types] ([type_id], [type_name]) VALUES (2, N'Bottoms')
INSERT [dbo].[outfit_types] ([type_id], [type_name]) VALUES (3, N'Shoes')
INSERT [dbo].[outfit_types] ([type_id], [type_name]) VALUES (4, N'Dresses')
INSERT [dbo].[outfit_types] ([type_id], [type_name]) VALUES (5, N'Accessories')
SET IDENTITY_INSERT [dbo].[outfit_types] OFF
/****** Object:  Table [dbo].[outfit_combinations]    Script Date: 12/21/2016 15:17:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[outfit_combinations](
	[relation_id] [int] IDENTITY(1,1) NOT NULL,
	[combination_id] [int] NOT NULL,
	[outfit_type_id] [int] NOT NULL,
	[outfit_id] [int] NOT NULL,
	[user_id] [int] NOT NULL,
	[created_date] [datetime] NOT NULL,
	[season] [nvarchar](50) NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[outfit_combinations] ON
INSERT [dbo].[outfit_combinations] ([relation_id], [combination_id], [outfit_type_id], [outfit_id], [user_id], [created_date], [season]) VALUES (1, 1, 1, 1, 1, CAST(0x0000A6E201133520 AS DateTime), N'Fall')
INSERT [dbo].[outfit_combinations] ([relation_id], [combination_id], [outfit_type_id], [outfit_id], [user_id], [created_date], [season]) VALUES (3, 1, 2, 2, 1, CAST(0x0000A6E201133520 AS DateTime), N'Fall')
INSERT [dbo].[outfit_combinations] ([relation_id], [combination_id], [outfit_type_id], [outfit_id], [user_id], [created_date], [season]) VALUES (4, 1, 3, 5, 1, CAST(0x0000A6E201133520 AS DateTime), N'Fall')
INSERT [dbo].[outfit_combinations] ([relation_id], [combination_id], [outfit_type_id], [outfit_id], [user_id], [created_date], [season]) VALUES (5, 15, 3, 6, 1, CAST(0x0000A6E2014B51BB AS DateTime), NULL)
INSERT [dbo].[outfit_combinations] ([relation_id], [combination_id], [outfit_type_id], [outfit_id], [user_id], [created_date], [season]) VALUES (6, 15, 1, 1, 1, CAST(0x0000A6E2014B566B AS DateTime), NULL)
INSERT [dbo].[outfit_combinations] ([relation_id], [combination_id], [outfit_type_id], [outfit_id], [user_id], [created_date], [season]) VALUES (7, 15, 2, 2, 1, CAST(0x0000A6E2014B585E AS DateTime), NULL)
INSERT [dbo].[outfit_combinations] ([relation_id], [combination_id], [outfit_type_id], [outfit_id], [user_id], [created_date], [season]) VALUES (11, 17, 1, 1, 1, CAST(0x0000A6E2014C7BA5 AS DateTime), NULL)
INSERT [dbo].[outfit_combinations] ([relation_id], [combination_id], [outfit_type_id], [outfit_id], [user_id], [created_date], [season]) VALUES (22, 24, 1, 11, 1, CAST(0x0000A6E30031EC12 AS DateTime), NULL)
INSERT [dbo].[outfit_combinations] ([relation_id], [combination_id], [outfit_type_id], [outfit_id], [user_id], [created_date], [season]) VALUES (23, 24, 2, 12, 1, CAST(0x0000A6E30031EC12 AS DateTime), NULL)
INSERT [dbo].[outfit_combinations] ([relation_id], [combination_id], [outfit_type_id], [outfit_id], [user_id], [created_date], [season]) VALUES (24, 24, 3, 13, 1, CAST(0x0000A6E30031EC12 AS DateTime), NULL)
INSERT [dbo].[outfit_combinations] ([relation_id], [combination_id], [outfit_type_id], [outfit_id], [user_id], [created_date], [season]) VALUES (25, 25, 1, 11, 1, CAST(0x0000A6E300328BE6 AS DateTime), NULL)
INSERT [dbo].[outfit_combinations] ([relation_id], [combination_id], [outfit_type_id], [outfit_id], [user_id], [created_date], [season]) VALUES (26, 25, 2, 2, 1, CAST(0x0000A6E300328BE6 AS DateTime), NULL)
INSERT [dbo].[outfit_combinations] ([relation_id], [combination_id], [outfit_type_id], [outfit_id], [user_id], [created_date], [season]) VALUES (27, 25, 3, 13, 1, CAST(0x0000A6E300328BE6 AS DateTime), NULL)
INSERT [dbo].[outfit_combinations] ([relation_id], [combination_id], [outfit_type_id], [outfit_id], [user_id], [created_date], [season]) VALUES (8, 16, 1, 1, 1, CAST(0x0000A6E2014C5FC9 AS DateTime), NULL)
INSERT [dbo].[outfit_combinations] ([relation_id], [combination_id], [outfit_type_id], [outfit_id], [user_id], [created_date], [season]) VALUES (9, 16, 2, 2, 1, CAST(0x0000A6E2014C5FC9 AS DateTime), NULL)
INSERT [dbo].[outfit_combinations] ([relation_id], [combination_id], [outfit_type_id], [outfit_id], [user_id], [created_date], [season]) VALUES (10, 16, 3, 6, 1, CAST(0x0000A6E2014C5FC9 AS DateTime), NULL)
INSERT [dbo].[outfit_combinations] ([relation_id], [combination_id], [outfit_type_id], [outfit_id], [user_id], [created_date], [season]) VALUES (15, 21, 2, 8, 1, CAST(0x0000A6E300056400 AS DateTime), NULL)
INSERT [dbo].[outfit_combinations] ([relation_id], [combination_id], [outfit_type_id], [outfit_id], [user_id], [created_date], [season]) VALUES (16, 21, 3, 10, 1, CAST(0x0000A6E300056400 AS DateTime), NULL)
INSERT [dbo].[outfit_combinations] ([relation_id], [combination_id], [outfit_type_id], [outfit_id], [user_id], [created_date], [season]) VALUES (17, 21, 1, 7, 1, CAST(0x0000A6E300056400 AS DateTime), NULL)
INSERT [dbo].[outfit_combinations] ([relation_id], [combination_id], [outfit_type_id], [outfit_id], [user_id], [created_date], [season]) VALUES (18, 21, 5, 9, 1, CAST(0x0000A6E300056400 AS DateTime), NULL)
INSERT [dbo].[outfit_combinations] ([relation_id], [combination_id], [outfit_type_id], [outfit_id], [user_id], [created_date], [season]) VALUES (19, 22, 1, 7, 1, CAST(0x0000A6E3000C8BBC AS DateTime), NULL)
INSERT [dbo].[outfit_combinations] ([relation_id], [combination_id], [outfit_type_id], [outfit_id], [user_id], [created_date], [season]) VALUES (20, 22, 2, 8, 1, CAST(0x0000A6E3000C8BBC AS DateTime), NULL)
INSERT [dbo].[outfit_combinations] ([relation_id], [combination_id], [outfit_type_id], [outfit_id], [user_id], [created_date], [season]) VALUES (21, 22, 3, 6, 1, CAST(0x0000A6E3000C8BBD AS DateTime), NULL)
INSERT [dbo].[outfit_combinations] ([relation_id], [combination_id], [outfit_type_id], [outfit_id], [user_id], [created_date], [season]) VALUES (28, 26, 1, 7, 1, CAST(0x0000A6E3003463AF AS DateTime), NULL)
INSERT [dbo].[outfit_combinations] ([relation_id], [combination_id], [outfit_type_id], [outfit_id], [user_id], [created_date], [season]) VALUES (29, 26, 2, 8, 1, CAST(0x0000A6E3003463AF AS DateTime), NULL)
INSERT [dbo].[outfit_combinations] ([relation_id], [combination_id], [outfit_type_id], [outfit_id], [user_id], [created_date], [season]) VALUES (30, 26, 3, 10, 1, CAST(0x0000A6E3003463AF AS DateTime), NULL)
INSERT [dbo].[outfit_combinations] ([relation_id], [combination_id], [outfit_type_id], [outfit_id], [user_id], [created_date], [season]) VALUES (31, 28, 3, 10, 1, CAST(0x0000A6E30034B426 AS DateTime), NULL)
INSERT [dbo].[outfit_combinations] ([relation_id], [combination_id], [outfit_type_id], [outfit_id], [user_id], [created_date], [season]) VALUES (32, 28, 1, 11, 1, CAST(0x0000A6E30034B426 AS DateTime), NULL)
INSERT [dbo].[outfit_combinations] ([relation_id], [combination_id], [outfit_type_id], [outfit_id], [user_id], [created_date], [season]) VALUES (33, 28, 2, 8, 1, CAST(0x0000A6E30034B426 AS DateTime), NULL)
INSERT [dbo].[outfit_combinations] ([relation_id], [combination_id], [outfit_type_id], [outfit_id], [user_id], [created_date], [season]) VALUES (34, 28, 5, 9, 1, CAST(0x0000A6E30034B426 AS DateTime), NULL)
INSERT [dbo].[outfit_combinations] ([relation_id], [combination_id], [outfit_type_id], [outfit_id], [user_id], [created_date], [season]) VALUES (38, 30, 2, 2, 1, CAST(0x0000A6E300F6EACE AS DateTime), NULL)
INSERT [dbo].[outfit_combinations] ([relation_id], [combination_id], [outfit_type_id], [outfit_id], [user_id], [created_date], [season]) VALUES (39, 30, 1, 1, 1, CAST(0x0000A6E300F6EACE AS DateTime), NULL)
INSERT [dbo].[outfit_combinations] ([relation_id], [combination_id], [outfit_type_id], [outfit_id], [user_id], [created_date], [season]) VALUES (40, 30, 3, 6, 1, CAST(0x0000A6E300F6EACE AS DateTime), NULL)
INSERT [dbo].[outfit_combinations] ([relation_id], [combination_id], [outfit_type_id], [outfit_id], [user_id], [created_date], [season]) VALUES (12, 18, 2, 2, 1, CAST(0x0000A6E2014D10AC AS DateTime), NULL)
INSERT [dbo].[outfit_combinations] ([relation_id], [combination_id], [outfit_type_id], [outfit_id], [user_id], [created_date], [season]) VALUES (13, 18, 3, 5, 1, CAST(0x0000A6E2014D10AC AS DateTime), NULL)
INSERT [dbo].[outfit_combinations] ([relation_id], [combination_id], [outfit_type_id], [outfit_id], [user_id], [created_date], [season]) VALUES (14, 18, 1, 1, 1, CAST(0x0000A6E2014D10AC AS DateTime), NULL)
INSERT [dbo].[outfit_combinations] ([relation_id], [combination_id], [outfit_type_id], [outfit_id], [user_id], [created_date], [season]) VALUES (35, 29, 3, 6, 2, CAST(0x0000A6E300E1E278 AS DateTime), NULL)
INSERT [dbo].[outfit_combinations] ([relation_id], [combination_id], [outfit_type_id], [outfit_id], [user_id], [created_date], [season]) VALUES (36, 29, 2, 2, 2, CAST(0x0000A6E300E1E279 AS DateTime), NULL)
INSERT [dbo].[outfit_combinations] ([relation_id], [combination_id], [outfit_type_id], [outfit_id], [user_id], [created_date], [season]) VALUES (37, 29, 1, 11, 2, CAST(0x0000A6E300E1E279 AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[outfit_combinations] OFF
/****** Object:  Table [dbo].[combinations]    Script Date: 12/21/2016 15:17:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[combinations](
	[comb_id] [int] IDENTITY(1,1) NOT NULL,
	[com_type_id] [int] NOT NULL,
	[comb_name] [nvarchar](50) NOT NULL,
	[created_date] [datetime] NOT NULL,
	[votes] [int] NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[combinations] ON
INSERT [dbo].[combinations] ([comb_id], [com_type_id], [comb_name], [created_date], [votes]) VALUES (1, 6, N'Casual Test For Men', CAST(0x0000A6E201133520 AS DateTime), 2)
INSERT [dbo].[combinations] ([comb_id], [com_type_id], [comb_name], [created_date], [votes]) VALUES (22, 6, N'Casual Women Test', CAST(0x0000A6E3000C8BBB AS DateTime), 1)
INSERT [dbo].[combinations] ([comb_id], [com_type_id], [comb_name], [created_date], [votes]) VALUES (26, 5, N'Casual Women', CAST(0x0000A6E3003463AE AS DateTime), 0)
INSERT [dbo].[combinations] ([comb_id], [com_type_id], [comb_name], [created_date], [votes]) VALUES (24, 2, N'Formal Mens', CAST(0x0000A6E30031EC11 AS DateTime), 1)
INSERT [dbo].[combinations] ([comb_id], [com_type_id], [comb_name], [created_date], [votes]) VALUES (30, 6, N'berkak', CAST(0x0000A6E300F6EACC AS DateTime), 0)
INSERT [dbo].[combinations] ([comb_id], [com_type_id], [comb_name], [created_date], [votes]) VALUES (28, 3, N'Women Nightout', CAST(0x0000A6E30034B425 AS DateTime), 2)
INSERT [dbo].[combinations] ([comb_id], [com_type_id], [comb_name], [created_date], [votes]) VALUES (15, 6, N'safdgfdgf', CAST(0x0000A6E2014B4DCF AS DateTime), 5)
INSERT [dbo].[combinations] ([comb_id], [com_type_id], [comb_name], [created_date], [votes]) VALUES (16, 6, N'zxcxccx', CAST(0x0000A6E2014C5FC8 AS DateTime), 5)
INSERT [dbo].[combinations] ([comb_id], [com_type_id], [comb_name], [created_date], [votes]) VALUES (21, 3, N'nightout test', CAST(0x0000A6E30006ACD4 AS DateTime), 3)
INSERT [dbo].[combinations] ([comb_id], [com_type_id], [comb_name], [created_date], [votes]) VALUES (25, 2, N'Formal Mens 2', CAST(0x0000A6E300328BE5 AS DateTime), 0)
INSERT [dbo].[combinations] ([comb_id], [com_type_id], [comb_name], [created_date], [votes]) VALUES (29, 6, N'Berkay Test', CAST(0x0000A6E300E1E278 AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[combinations] OFF
/****** Object:  Table [dbo].[com_types]    Script Date: 12/21/2016 15:17:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[com_types](
	[com_type_id] [int] IDENTITY(1,1) NOT NULL,
	[com_type] [nvarchar](50) NOT NULL,
	[gender] [bit] NOT NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[com_types] ON
INSERT [dbo].[com_types] ([com_type_id], [com_type], [gender]) VALUES (1, N'Formal', 0)
INSERT [dbo].[com_types] ([com_type_id], [com_type], [gender]) VALUES (2, N'Formal', 1)
INSERT [dbo].[com_types] ([com_type_id], [com_type], [gender]) VALUES (3, N'NightOut', 0)
INSERT [dbo].[com_types] ([com_type_id], [com_type], [gender]) VALUES (4, N'NightOut', 1)
INSERT [dbo].[com_types] ([com_type_id], [com_type], [gender]) VALUES (5, N'Casual', 0)
INSERT [dbo].[com_types] ([com_type_id], [com_type], [gender]) VALUES (6, N'Casual', 1)
SET IDENTITY_INSERT [dbo].[com_types] OFF
/****** Object:  Table [dbo].[com_outfit_rel]    Script Date: 12/21/2016 15:17:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[com_outfit_rel](
	[rel_id] [int] IDENTITY(1,1) NOT NULL,
	[com_type_id] [int] NOT NULL,
	[outfit_type_id] [int] NOT NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[com_outfit_rel] ON
INSERT [dbo].[com_outfit_rel] ([rel_id], [com_type_id], [outfit_type_id]) VALUES (1, 3, 1)
INSERT [dbo].[com_outfit_rel] ([rel_id], [com_type_id], [outfit_type_id]) VALUES (2, 3, 2)
INSERT [dbo].[com_outfit_rel] ([rel_id], [com_type_id], [outfit_type_id]) VALUES (3, 3, 3)
INSERT [dbo].[com_outfit_rel] ([rel_id], [com_type_id], [outfit_type_id]) VALUES (4, 3, 5)
INSERT [dbo].[com_outfit_rel] ([rel_id], [com_type_id], [outfit_type_id]) VALUES (5, 4, 1)
INSERT [dbo].[com_outfit_rel] ([rel_id], [com_type_id], [outfit_type_id]) VALUES (6, 4, 2)
INSERT [dbo].[com_outfit_rel] ([rel_id], [com_type_id], [outfit_type_id]) VALUES (7, 4, 3)
INSERT [dbo].[com_outfit_rel] ([rel_id], [com_type_id], [outfit_type_id]) VALUES (8, 4, 5)
INSERT [dbo].[com_outfit_rel] ([rel_id], [com_type_id], [outfit_type_id]) VALUES (9, 5, 1)
INSERT [dbo].[com_outfit_rel] ([rel_id], [com_type_id], [outfit_type_id]) VALUES (10, 5, 2)
INSERT [dbo].[com_outfit_rel] ([rel_id], [com_type_id], [outfit_type_id]) VALUES (11, 5, 3)
INSERT [dbo].[com_outfit_rel] ([rel_id], [com_type_id], [outfit_type_id]) VALUES (12, 6, 1)
INSERT [dbo].[com_outfit_rel] ([rel_id], [com_type_id], [outfit_type_id]) VALUES (13, 6, 2)
INSERT [dbo].[com_outfit_rel] ([rel_id], [com_type_id], [outfit_type_id]) VALUES (14, 6, 3)
INSERT [dbo].[com_outfit_rel] ([rel_id], [com_type_id], [outfit_type_id]) VALUES (15, 1, 1)
INSERT [dbo].[com_outfit_rel] ([rel_id], [com_type_id], [outfit_type_id]) VALUES (16, 1, 2)
INSERT [dbo].[com_outfit_rel] ([rel_id], [com_type_id], [outfit_type_id]) VALUES (17, 1, 3)
INSERT [dbo].[com_outfit_rel] ([rel_id], [com_type_id], [outfit_type_id]) VALUES (18, 2, 1)
INSERT [dbo].[com_outfit_rel] ([rel_id], [com_type_id], [outfit_type_id]) VALUES (19, 2, 2)
INSERT [dbo].[com_outfit_rel] ([rel_id], [com_type_id], [outfit_type_id]) VALUES (20, 2, 3)
SET IDENTITY_INSERT [dbo].[com_outfit_rel] OFF
/****** Object:  Default [DF_combinations_votes]    Script Date: 12/21/2016 15:17:06 ******/
ALTER TABLE [dbo].[combinations] ADD  CONSTRAINT [DF_combinations_votes]  DEFAULT ((0)) FOR [votes]
GO
