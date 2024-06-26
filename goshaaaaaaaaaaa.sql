USE [gosha_donations]
GO
/****** Object:  Table [dbo].[Donations]    Script Date: 12/19/2023 10:31:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Donations](
	[id_donate] [int] IDENTITY(1,1) NOT NULL,
	[id_fond] [int] NOT NULL,
	[donate] [int] NULL,
 CONSTRAINT [PK_Donations] PRIMARY KEY CLUSTERED 
(
	[id_donate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fonds]    Script Date: 12/19/2023 10:31:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fonds](
	[id_fond] [int] IDENTITY(1,1) NOT NULL,
	[fond_name] [nchar](10) NULL,
	[fond_money] [nchar](10) NULL,
 CONSTRAINT [PK_Fonds] PRIMARY KEY CLUSTERED 
(
	[id_fond] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 12/19/2023 10:31:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[user_id] [int] IDENTITY(1,1) NOT NULL,
	[user_fullname] [nvarchar](max) NULL,
	[user_inn] [nvarchar](max) NULL,
	[user_phone] [nvarchar](max) NULL,
	[user_login] [nvarchar](max) NULL,
	[user_password] [nvarchar](max) NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([user_id], [user_fullname], [user_inn], [user_phone], [user_login], [user_password]) VALUES (1, N'Георгий Войтенко Иванович', N'4438588223412341', N'+723412432', N'login', N'password')
INSERT [dbo].[Users] ([user_id], [user_fullname], [user_inn], [user_phone], [user_login], [user_password]) VALUES (2, N'sadsadasdasd', N'asdasdasd', N'asdasfsdfsd', N'1', N'1')
INSERT [dbo].[Users] ([user_id], [user_fullname], [user_inn], [user_phone], [user_login], [user_password]) VALUES (3, N'asdasdas', N'asdasd', N'asdasd', N'2', N'2')
INSERT [dbo].[Users] ([user_id], [user_fullname], [user_inn], [user_phone], [user_login], [user_password]) VALUES (4, N'фывфы', N'вфывфыв', N'вфывфы', N'3', N'3')
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
ALTER TABLE [dbo].[Donations]  WITH CHECK ADD  CONSTRAINT [FK_Donations_Fonds] FOREIGN KEY([id_fond])
REFERENCES [dbo].[Fonds] ([id_fond])
GO
ALTER TABLE [dbo].[Donations] CHECK CONSTRAINT [FK_Donations_Fonds]
GO
