USE [BloggingDB]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 7/8/2018 3:45:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Entry]    Script Date: 7/8/2018 3:45:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Entry](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](300) NOT NULL,
	[ImagePath] [nvarchar](1000) NULL,
	[Content] [nvarchar](max) NULL,
	[PublishedDate] [datetime] NOT NULL,
	[CategoryID] [int] NULL,
 CONSTRAINT [PK_Table_1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([ID], [Name]) VALUES (1, N'Quote')
INSERT [dbo].[Category] ([ID], [Name]) VALUES (2, N'Photo')
INSERT [dbo].[Category] ([ID], [Name]) VALUES (3, N'Other')
SET IDENTITY_INSERT [dbo].[Category] OFF
SET IDENTITY_INSERT [dbo].[Entry] ON 

INSERT [dbo].[Entry] ([ID], [Name], [ImagePath], [Content], [PublishedDate], [CategoryID]) VALUES (1, N'You''ve gotta dance', N'', N'"“You''ve gotta dance like there''s nobody watching,
Love like you''ll never be hurt,
Sing like there''s nobody listening,
And live like it''s heaven on earth.” "

William W. Purkey', CAST(N'2015-11-16T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[Entry] ([ID], [Name], [ImagePath], [Content], [PublishedDate], [CategoryID]) VALUES (5, N'Essential skills for a happy life!', N'', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.

At eam doctus oportere, eam feugait delectus ne. Quo cu vulputate persecuti. Eum ut natum possim comprehensam, habeo dicta scaevola eu nec. Ea adhuc reformidans eam. Pri dolore epicuri eu, ne cum tantas fierent instructior. Pro ridens intellegam ut, sea at graecis scriptorem eloquentiam.

Per an labitur lucilius ullamcorper, esse erat ponderum ad vim. Possim laoreet suscipit ex pri, vix numquam eruditi feugait in. Nec maluisset complectitur te, at sea decore semper. Falli numquam perpetua sea et, tibique repudiandae an pro. Ut his solum persius postulant. Soluta nemore debitis ne eos, cum an scripta pericula partiendo. http://cdn.simplesite.com/i/2b/ac/283445309157387307/i283445314544979646._szw480h1280_.jpg', CAST(N'2015-11-16T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Entry] ([ID], [Name], [ImagePath], [Content], [PublishedDate], [CategoryID]) VALUES (8, N'Photos', N'http://cdn.simplesite.com/i/2b/ac/283445309157387307/i283445314544979644._szw1280h1280_.jpg', N' ', CAST(N'2015-11-16T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[Entry] ([ID], [Name], [ImagePath], [Content], [PublishedDate], [CategoryID]) VALUES (11, N'Sample', N'', N'Hello world how are you', CAST(N'2018-08-07T00:00:00.000' AS DateTime), 3)
SET IDENTITY_INSERT [dbo].[Entry] OFF
ALTER TABLE [dbo].[Entry]  WITH CHECK ADD FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Category] ([ID])
GO
