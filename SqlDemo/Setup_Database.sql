CREATE DATABASE BASICS

USE [basics]
GO
/****** Object:  UserDefinedTableType [dbo].[myType]    Script Date: 7/2/2017 1:18:33 AM ******/
CREATE TYPE [dbo].[myType] AS TABLE(
	[id] [int] NULL,
	[name] [nvarchar](100) NULL
)
GO
/****** Object:  Table [dbo].[dept]    Script Date: 7/2/2017 1:18:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dept](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[emp]    Script Date: 7/2/2017 1:18:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[emp](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[address] [nvarchar](250) NULL,
	[gender] [char](1) NULL,
	[salary] [money] NULL,
	[deptid] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[dept] ON 

GO
INSERT [dbo].[dept] ([id], [name]) VALUES (1, N'IT')
GO
INSERT [dbo].[dept] ([id], [name]) VALUES (2, N'Account')
GO
INSERT [dbo].[dept] ([id], [name]) VALUES (3, N'Finance')
GO
INSERT [dbo].[dept] ([id], [name]) VALUES (5, N'WFM')
GO
INSERT [dbo].[dept] ([id], [name]) VALUES (8, N'GAME')
GO
SET IDENTITY_INSERT [dbo].[dept] OFF
GO
SET IDENTITY_INSERT [dbo].[emp] ON 

GO
INSERT [dbo].[emp] ([id], [name], [address], [gender], [salary], [deptid]) VALUES (1, N'Raj', N'Pune', N'M', 100.0000, 1)
GO
INSERT [dbo].[emp] ([id], [name], [address], [gender], [salary], [deptid]) VALUES (3, N'Chitra', N'Pune', N'F', 500.0000, 1)
GO
INSERT [dbo].[emp] ([id], [name], [address], [gender], [salary], [deptid]) VALUES (4, N'Atul', N'Satara', N'M', 200.0000, 3)
GO
INSERT [dbo].[emp] ([id], [name], [address], [gender], [salary], [deptid]) VALUES (5, N'Kiran', N'Nagar', N'M', 140.0000, 2)
GO
INSERT [dbo].[emp] ([id], [name], [address], [gender], [salary], [deptid]) VALUES (7, N'Rahul', N'Nashik', N'M', 600.0000, 3)
GO
INSERT [dbo].[emp] ([id], [name], [address], [gender], [salary], [deptid]) VALUES (9, N'Snehal', N'Korgegaon', N'F', 150.0000, 1)
GO
INSERT [dbo].[emp] ([id], [name], [address], [gender], [salary], [deptid]) VALUES (10, N'Mamata', N'Akola', N'F', 200.0000, 3)
GO
INSERT [dbo].[emp] ([id], [name], [address], [gender], [salary], [deptid]) VALUES (11, N'Suraj', N'Malvan', N'M', 400.0000, 2)
GO
SET IDENTITY_INSERT [dbo].[emp] OFF
GO
ALTER TABLE [dbo].[emp]  WITH CHECK ADD FOREIGN KEY([deptid])
REFERENCES [dbo].[dept] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
