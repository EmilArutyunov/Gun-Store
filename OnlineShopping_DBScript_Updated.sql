USE [master]
GO
/****** Object:  Database [Online_Shopping]    ******/
CREATE DATABASE [Online_Shopping]
GO
USE [Online_Shopping]
GO
/****** Object:  Table [dbo].[Tbl_Cart]    ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Cart](
	[CartId] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NULL,
	[MemberId] [int] NULL,
	[CartStatusId] [int] NULL,
	[AddedOn] [datetime] NULL,
	[UpdatedOn] [datetime] NULL,
	[ShippingDetailId] [int] NULL,
 CONSTRAINT [PK_Tbl_Cart] PRIMARY KEY CLUSTERED 
(
	[CartId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tbl_CartStatus]    ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tbl_CartStatus](
	[CartStatusId] [int] IDENTITY(1,1) NOT NULL,
	[CartStatus] [varchar](100) NULL,
 CONSTRAINT [PK_Tbl_CartStatus] PRIMARY KEY CLUSTERED 
(
	[CartStatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tbl_Category]    ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Category](
	[CategoryId] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](100) NULL,
	[IsActive] [bit] NULL,
	[IsDelete] [bit] NULL,
 CONSTRAINT [PK_Tbl_ServiceCategory] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tbl_MemberRole]    ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_MemberRole](
	[MemberRoleId] [int] IDENTITY(1,1) NOT NULL,
	[MemberId] [int] NULL,
	[RoleId] [int] NULL,
 CONSTRAINT [PK_Tbl_MemberRole] PRIMARY KEY CLUSTERED 
(
	[MemberRoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tbl_Members]    ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Members](
	[MemberId] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[EmailId] [nvarchar](200) NULL,
	[Password] [nvarchar](50) NULL,
	[IsActive] [bit] NULL,
	[IsDelete] [bit] NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedOn] [datetime] NULL,
 CONSTRAINT [PK_Tbl_Member] PRIMARY KEY CLUSTERED 
(
	[MemberId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tbl_Product]    ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tbl_Product](
	[ProductId] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [varchar](100) NULL,
	[CategoryId] [int] NULL,
	[IsActive] [bit] NULL,
	[IsDelete] [bit] NULL,
	[CreatedDate] [date] NULL,
	[ModifiedDate] [date] NULL,
	[Description] [varchar](500) NULL,
	[ProductImage] [varchar](50) NULL,
	[Price] [decimal](18, 2) NULL,
	[IsFeatured] [bit] NULL,
 CONSTRAINT [PK_Tbl_Product] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tbl_Roles]    ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Roles](
	[RoleId] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](50) NULL,
 CONSTRAINT [PK_Tbl_Roles] PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tbl_ShippingDetails]    ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tbl_ShippingDetails](
	[ShippingDetailId] [int] IDENTITY(1,1) NOT NULL,
	[MemberId] [int] NULL,
	[AddressLine] [varchar](100) NULL,
	[City] [varchar](50) NULL,
	[State] [varchar](50) NULL,
	[Country] [varchar](50) NULL,
	[ZipCode] [varchar](50) NULL,
	[OrderId] [varchar](50) NULL,
	[AmountPaid] [decimal](18, 0) NULL,
	[PaymentType] [varchar](50) NULL,
 CONSTRAINT [PK_Tbl_ShippingAddress] PRIMARY KEY CLUSTERED 
(
	[ShippingDetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Tbl_Cart] ON 

GO
INSERT [dbo].[Tbl_Cart] ([CartId], [ProductId], [MemberId], [CartStatusId], [AddedOn], [UpdatedOn], [ShippingDetailId]) VALUES (2, 7, 4, 3, CAST(N'2020-03-08 00:19:22.437' AS DateTime), CAST(N'2020-03-08 00:19:22.437' AS DateTime), NULL)
GO
INSERT [dbo].[Tbl_Cart] ([CartId], [ProductId], [MemberId], [CartStatusId], [AddedOn], [UpdatedOn], [ShippingDetailId]) VALUES (3, 6, 4, 3, CAST(N'2020-03-08 20:12:53.893' AS DateTime), CAST(N'2020-03-08 20:12:53.893' AS DateTime), NULL)
GO
INSERT [dbo].[Tbl_Cart] ([CartId], [ProductId], [MemberId], [CartStatusId], [AddedOn], [UpdatedOn], [ShippingDetailId]) VALUES (4, 4, 6, 2, CAST(N'2020-03-08 23:01:00.223' AS DateTime), CAST(N'2020-03-08 23:06:07.227' AS DateTime), NULL)
GO
INSERT [dbo].[Tbl_Cart] ([CartId], [ProductId], [MemberId], [CartStatusId], [AddedOn], [UpdatedOn], [ShippingDetailId]) VALUES (5, 6, 6, 2, CAST(N'2020-03-08 23:01:07.550' AS DateTime), CAST(N'2020-03-08 23:05:59.023' AS DateTime), NULL)
GO
INSERT [dbo].[Tbl_Cart] ([CartId], [ProductId], [MemberId], [CartStatusId], [AddedOn], [UpdatedOn], [ShippingDetailId]) VALUES (6, 2, 6, 2, CAST(N'2020-03-08 23:02:20.290' AS DateTime), CAST(N'2020-03-08 23:06:04.353' AS DateTime), NULL)
GO
INSERT [dbo].[Tbl_Cart] ([CartId], [ProductId], [MemberId], [CartStatusId], [AddedOn], [UpdatedOn], [ShippingDetailId]) VALUES (7, 4, 6, 1, CAST(N'2020-03-08 23:02:55.833' AS DateTime), CAST(N'2020-03-08 23:02:56.987' AS DateTime), NULL)
GO
INSERT [dbo].[Tbl_Cart] ([CartId], [ProductId], [MemberId], [CartStatusId], [AddedOn], [UpdatedOn], [ShippingDetailId]) VALUES (8, 6, 6, 1, CAST(N'2020-03-08 23:04:10.443' AS DateTime), CAST(N'2020-03-08 23:04:10.447' AS DateTime), NULL)
GO
INSERT [dbo].[Tbl_Cart] ([CartId], [ProductId], [MemberId], [CartStatusId], [AddedOn], [UpdatedOn], [ShippingDetailId]) VALUES (9, 2, 6, 1, CAST(N'2020-03-08 23:05:45.133' AS DateTime), CAST(N'2020-03-08 23:05:45.133' AS DateTime), NULL)
GO
INSERT [dbo].[Tbl_Cart] ([CartId], [ProductId], [MemberId], [CartStatusId], [AddedOn], [UpdatedOn], [ShippingDetailId]) VALUES (1004, 7, 4, 3, CAST(N'2020-03-09 01:52:43.600' AS DateTime), CAST(N'2020-03-09 01:52:43.600' AS DateTime), NULL)
GO
INSERT [dbo].[Tbl_Cart] ([CartId], [ProductId], [MemberId], [CartStatusId], [AddedOn], [UpdatedOn], [ShippingDetailId]) VALUES (1005, 6, 4, 3, CAST(N'2020-03-09 01:52:52.363' AS DateTime), CAST(N'2020-03-09 01:52:52.363' AS DateTime), NULL)
GO
INSERT [dbo].[Tbl_Cart] ([CartId], [ProductId], [MemberId], [CartStatusId], [AddedOn], [UpdatedOn], [ShippingDetailId]) VALUES (1006, 5, 4, 3, CAST(N'2020-03-09 22:22:12.743' AS DateTime), CAST(N'2020-03-09 22:22:12.743' AS DateTime), NULL)
GO
INSERT [dbo].[Tbl_Cart] ([CartId], [ProductId], [MemberId], [CartStatusId], [AddedOn], [UpdatedOn], [ShippingDetailId]) VALUES (1007, 6, 4, 3, CAST(N'2020-03-09 22:22:23.367' AS DateTime), CAST(N'2020-03-09 22:22:23.367' AS DateTime), NULL)
GO
INSERT [dbo].[Tbl_Cart] ([CartId], [ProductId], [MemberId], [CartStatusId], [AddedOn], [UpdatedOn], [ShippingDetailId]) VALUES (1008, 5, 3, 1, CAST(N'2016-12-01 23:58:46.887' AS DateTime), CAST(N'2016-12-01 23:58:46.887' AS DateTime), NULL)
GO
SET IDENTITY_INSERT [dbo].[Tbl_Cart] OFF
GO
SET IDENTITY_INSERT [dbo].[Tbl_CartStatus] ON 

GO
INSERT [dbo].[Tbl_CartStatus] ([CartStatusId], [CartStatus]) VALUES (1, N'Added to cart')
GO
INSERT [dbo].[Tbl_CartStatus] ([CartStatusId], [CartStatus]) VALUES (2, N'Removed from cart')
GO
INSERT [dbo].[Tbl_CartStatus] ([CartStatusId], [CartStatus]) VALUES (3, N'Purchased the item')
GO
SET IDENTITY_INSERT [dbo].[Tbl_CartStatus] OFF
GO
SET IDENTITY_INSERT [dbo].[Tbl_Category] ON 

GO
INSERT [dbo].[Tbl_Category] ([CategoryId], [CategoryName], [IsActive], [IsDelete]) VALUES (1, N'Assault Rifle', 1, 0)
GO
INSERT [dbo].[Tbl_Category] ([CategoryId], [CategoryName], [IsActive], [IsDelete]) VALUES (2, N'SMG', 1, 0)
GO
INSERT [dbo].[Tbl_Category] ([CategoryId], [CategoryName], [IsActive], [IsDelete]) VALUES (2, N'Shotgun', 1, 0)
GO
INSERT [dbo].[Tbl_Category] ([CategoryId], [CategoryName], [IsActive], [IsDelete]) VALUES (2, N'Handgun', 1, 0)
GO
INSERT [dbo].[Tbl_Category] ([CategoryId], [CategoryName], [IsActive], [IsDelete]) VALUES (2, N'Bolt rifles', 1, 0)
GO
SET IDENTITY_INSERT [dbo].[Tbl_Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Tbl_MemberRole] ON 

GO
INSERT [dbo].[Tbl_MemberRole] ([MemberRoleId], [MemberId], [RoleId]) VALUES (3, 3, 1)
GO
INSERT [dbo].[Tbl_MemberRole] ([MemberRoleId], [MemberId], [RoleId]) VALUES (6, 4, 2)
GO
INSERT [dbo].[Tbl_MemberRole] ([MemberRoleId], [MemberId], [RoleId]) VALUES (7, 5, 2)
GO
INSERT [dbo].[Tbl_MemberRole] ([MemberRoleId], [MemberId], [RoleId]) VALUES (8, 6, 2)
GO
SET IDENTITY_INSERT [dbo].[Tbl_MemberRole] OFF
GO
SET IDENTITY_INSERT [dbo].[Tbl_Members] ON 

/*GO
INSERT [dbo].[Tbl_Members] ([MemberId], [FirstName], [LastName], [EmailId], [Password], [IsActive], [IsDelete], [CreatedOn], [ModifiedOn]) VALUES (3, N'Admin', N'Admin', N'admin@gmail.com', N'admin', 1, 0, CAST(N'2020-03-08 23:34:01.630' AS DateTime), CAST(N'2020-03-08 23:34:01.630' AS DateTime))
GO
INSERT [dbo].[Tbl_Members] ([MemberId], [FirstName], [LastName], [EmailId], [Password], [IsActive], [IsDelete], [CreatedOn], [ModifiedOn]) VALUES (4, N'User', N'User', N'user@gmail.com', N'user', 1, 0, CAST(N'2020-03-08 23:34:01.630' AS DateTime), CAST(N'2020-03-08 23:34:01.630' AS DateTime))
*/
GO
SET IDENTITY_INSERT [dbo].[Tbl_Members] OFF
GO
SET IDENTITY_INSERT [dbo].[Tbl_Product] ON 

GO
INSERT [dbo].[Tbl_Product] ([ProductId], [ProductName], [CategoryId], [IsActive], [IsDelete], [CreatedDate], [ModifiedDate], [Description], [ProductImage], [Price], [IsFeatured]) VALUES (1, N'AK-101', 1, 1, 0, CAST(N'2020-03-08' AS Date), CAST(N'2020-03-08' AS Date), N'<p>The AK-101 is an assault rifle of the Kalashnikov series.</p>', N'ak101.png', CAST(700.00 AS Decimal(18, 2)), 1)
GO
INSERT [dbo].[Tbl_Product] ([ProductId], [ProductName], [CategoryId], [IsActive], [IsDelete], [CreatedDate], [ModifiedDate], [Description], [ProductImage], [Price], [IsFeatured]) VALUES (2, N'M4A1', 1, 1, 0, CAST(N'2020-03-08' AS Date), CAST(N'2020-03-08' AS Date), N'<p>The M4A1 carbine is a fully automatic variant of the basic M4 carbine intended for special operations use.</p>', N'm4a1.png', CAST(900.00 AS Decimal(18, 2)), 1)
GO
INSERT [dbo].[Tbl_Product] ([ProductId], [ProductName], [CategoryId], [IsActive], [IsDelete], [CreatedDate], [ModifiedDate], [Description], [ProductImage], [Price], [IsFeatured]) VALUES (3, N'AKM', 1, 1, 0, CAST(N'2020-03-08' AS Date), CAST(N'2020-03-08' AS Date), N'<p>AKM - is a 7.62×39mm assault rifle designed by Mikhail Kalashnikov.</p>', N'akm.png', CAST(500.00 AS Decimal(18, 2)), 1)
GO
INSERT [dbo].[Tbl_Product] ([ProductId], [ProductName], [CategoryId], [IsActive], [IsDelete], [CreatedDate], [ModifiedDate], [Description], [ProductImage], [Price], [IsFeatured]) VALUES (4, N'MPX', 2, 1, 0, CAST(N'2020-03-08' AS Date), CAST(N'2020-03-08' AS Date), N'<p>The SIG MPX is a gas-operated submachine gun designed and manufactured by SIG Sauer, and is primarily chambered in 9×19mm Parabellum cartridge.</p>', N'mpx.png', CAST(600.00 AS Decimal(18, 2)), 1)
GO
INSERT [dbo].[Tbl_Product] ([ProductId], [ProductName], [CategoryId], [IsActive], [IsDelete], [CreatedDate], [ModifiedDate], [Description], [ProductImage], [Price], [IsFeatured]) VALUES (5, N'MP5', 2, 1, 0, CAST(N'2020-03-08' AS Date), CAST(N'2020-03-08' AS Date), N'<p>The MP5 is a 9x19mm Parabellum submachine gun, developed in the 1960s by a team of engineers from the German small arms manufacturer Heckler & Koch.</p>', N'mp5.png', CAST(480.00 AS Decimal(18, 2)), 1)
GO
INSERT [dbo].[Tbl_Product] ([ProductId], [ProductName], [CategoryId], [IsActive], [IsDelete], [CreatedDate], [ModifiedDate], [Description], [ProductImage], [Price], [IsFeatured]) VALUES (6, N'SAIGA-12K', 3, 1, 0, CAST(N'2020-03-08' AS Date), CAST(N'2020-03-08' AS Date), N'<p>SAIGA - is a 12-gauge shotgun available in a wide range of configurations, patterned after the Kalashnikov series of rifles and named for the Saiga antelope.</p>', N'saiga.png', CAST(560.00 AS Decimal(18, 2)), 1)
GO
INSERT [dbo].[Tbl_Product] ([ProductId], [ProductName], [CategoryId], [IsActive], [IsDelete], [CreatedDate], [ModifiedDate], [Description], [ProductImage], [Price], [IsFeatured]) VALUES (7, N'TT', 4, 1, 0, CAST(N'2020-03-08' AS Date), CAST(N'2020-03-08' AS Date), N'<p>The TT-30 is an out-of-production Russian semi-automatic pistol. </p>', N'tt.png', CAST(220.00 AS Decimal(18, 2)), 1)
GO
INSERT [dbo].[Tbl_Product] ([ProductId], [ProductName], [CategoryId], [IsActive], [IsDelete], [CreatedDate], [ModifiedDate], [Description], [ProductImage], [Price], [IsFeatured]) VALUES (8, N'G18C', 4, 1, 0, CAST(N'2020-03-08' AS Date), CAST(N'2020-03-08' AS Date), N'<p>The GLOCK G18C comes with compensator slots in the barrel and slide.</p>', N'g18c.png', CAST(340.00 AS Decimal(18, 2)), 1)
GO
INSERT [dbo].[Tbl_Product] ([ProductId], [ProductName], [CategoryId], [IsActive], [IsDelete], [CreatedDate], [ModifiedDate], [Description], [ProductImage], [Price], [IsFeatured]) VALUES (9, N'SV-98', 5, 1, 0, CAST(N'2020-03-08' AS Date), CAST(N'2020-03-08' AS Date), N'<p>The SV-98 (Snaiperskaya Vintovka Model 1998) is a Russian bolt-action sniper rifle designed by Vladimir Stronskiy.</p>', N'sv98.png', CAST(1450.00 AS Decimal(18, 2)), 1)
GO
SET IDENTITY_INSERT [dbo].[Tbl_Product] OFF
GO
SET IDENTITY_INSERT [dbo].[Tbl_Roles] ON 

GO
INSERT [dbo].[Tbl_Roles] ([RoleId], [RoleName]) VALUES (1, N'Admin')
GO
INSERT [dbo].[Tbl_Roles] ([RoleId], [RoleName]) VALUES (2, N'User')
GO
SET IDENTITY_INSERT [dbo].[Tbl_Roles] OFF
GO
SET IDENTITY_INSERT [dbo].[Tbl_ShippingDetails] ON 
/*
GO
INSERT [dbo].[Tbl_ShippingDetails] ([ShippingDetailId], [MemberId], [AddressLine], [City], [State], [Country], [ZipCode], [OrderId], [AmountPaid], [PaymentType]) VALUES (1, 4, N'sdsad', N'sdasd', N'dwfef', N'ewdwd', N'wqewqe', N'30b8dcac-4e3e-4596-b171-ab8be74868c1', CAST(8450 AS Decimal(18, 0)), N'Pay Using Debit/Credit Card')
GO
INSERT [dbo].[Tbl_ShippingDetails] ([ShippingDetailId], [MemberId], [AddressLine], [City], [State], [Country], [ZipCode], [OrderId], [AmountPaid], [PaymentType]) VALUES (2, 4, N'Karol Bagh', N'Delhi', N'New Delhi', N'India', N'110009', N'428f09f8-141b-49b9-be38-77f5a288ea73', CAST(8450 AS Decimal(18, 0)), N'Pay Using Net banking')
GO
INSERT [dbo].[Tbl_ShippingDetails] ([ShippingDetailId], [MemberId], [AddressLine], [City], [State], [Country], [ZipCode], [OrderId], [AmountPaid], [PaymentType]) VALUES (3, 4, N'Karol Bagh', N'Delhi', N'New Delhi', N'India', N'110006', N'314a9d28-550d-443c-ba6b-13dc905fabaf', CAST(90850 AS Decimal(18, 0)), N'Cash On Delivery')
*/
GO
SET IDENTITY_INSERT [dbo].[Tbl_ShippingDetails] OFF
GO
ALTER TABLE [dbo].[Tbl_Cart]  WITH CHECK ADD FOREIGN KEY([CartStatusId])
REFERENCES [dbo].[Tbl_CartStatus] ([CartStatusId])
GO
ALTER TABLE [dbo].[Tbl_Cart]  WITH CHECK ADD FOREIGN KEY([MemberId])
REFERENCES [dbo].[Tbl_Members] ([MemberId])
GO
ALTER TABLE [dbo].[Tbl_Cart]  WITH CHECK ADD FOREIGN KEY([ProductId])
REFERENCES [dbo].[Tbl_Product] ([ProductId])
GO
ALTER TABLE [dbo].[Tbl_MemberRole]  WITH CHECK ADD  CONSTRAINT [fk_Tbl_Member_Tbl_MemberRole] FOREIGN KEY([MemberId])
REFERENCES [dbo].[Tbl_Members] ([MemberId])
GO
ALTER TABLE [dbo].[Tbl_MemberRole] CHECK CONSTRAINT [fk_Tbl_Member_Tbl_MemberRole]
GO
ALTER TABLE [dbo].[Tbl_MemberRole]  WITH CHECK ADD  CONSTRAINT [fk_Tbl_Roles_Tbl_MemberRole] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Tbl_Roles] ([RoleId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Tbl_MemberRole] CHECK CONSTRAINT [fk_Tbl_Roles_Tbl_MemberRole]
GO
ALTER TABLE [dbo].[Tbl_Product]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_Category_Tbl_Product] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Tbl_Category] ([CategoryId])
GO
ALTER TABLE [dbo].[Tbl_Product] CHECK CONSTRAINT [FK_Tbl_Category_Tbl_Product]
GO
/****** Object:  StoredProcedure [dbo].[USP_MemberShoppingCartDetails]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[USP_MemberShoppingCartDetails] 
(@memberId int) 
as 
begin 
select cr.CartId, p.Price,p.ProductId,p.ProductImage,p.ProductName,c.CategoryName 
from Tbl_Cart cr join Tbl_Product p on p.ProductId=cr.ProductId 
join Tbl_Category c on c.CategoryId=p.CategoryId 
join Tbl_Members m on m.MemberId=cr.MemberId where m.MemberId=@memberId 
and cr.CartStatusId=1 end 

GO
/****** Object:  StoredProcedure [dbo].[USP_Search]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[USP_Search](@searchKey varchar(100)) as begin select p.Description,p.Price,p.ProductId,p.ProductImage, p.ProductName, c.CategoryName from Tbl_Product p  join Tbl_Category c on p.CategoryId=c.CategoryId where p.IsActive=1 and p.IsDelete=0 and c.IsActive=1 and c.IsDelete=0 and (p.ProductName like '%'+@searchKey+'%' or c.CategoryName like '%'+@searchKey+'%') end

GO
USE [master]
GO
ALTER DATABASE [Online_Shopping] SET  READ_WRITE 
GO
