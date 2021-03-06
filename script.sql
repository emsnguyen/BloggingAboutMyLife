USE [BloggingDB]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 7/10/2018 12:41:32 AM ******/
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
/****** Object:  Table [dbo].[Entry]    Script Date: 7/10/2018 12:41:32 AM ******/
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

INSERT [dbo].[Entry] ([ID], [Name], [ImagePath], [Content], [PublishedDate], [CategoryID]) VALUES (1, N'You''ve gotta dance', N'', N'“You''ve gotta dance like there''s nobody watching,
Love like you''ll never be hurt,
Sing like there''s nobody listening,
And live like it''s heaven on earth."

William W. Purkey', CAST(N'2018-11-16T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Entry] ([ID], [Name], [ImagePath], [Content], [PublishedDate], [CategoryID]) VALUES (5, N'Essential skills for a happy life!', N'http://cdn.simplesite.com/i/2b/ac/283445309157387307/i283445314544979646._szw480h1280_.jpg', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.

At eam doctus oportere, eam feugait delectus ne. Quo cu vulputate persecuti. Eum ut natum possim comprehensam, habeo dicta scaevola eu nec. Ea adhuc reformidans eam. Pri dolore epicuri eu, ne cum tantas fierent instructior. Pro ridens intellegam ut, sea at graecis scriptorem eloquentiam.

Per an labitur lucilius ullamcorper, esse erat ponderum ad vim. Possim laoreet suscipit ex pri, vix numquam eruditi feugait in. Nec maluisset complectitur te, at sea decore semper. Falli numquam perpetua sea et, tibique repudiandae an pro. Ut his solum persius postulant. Soluta nemore debitis ne eos, cum an scripta pericula partiendo.', CAST(N'2018-11-16T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[Entry] ([ID], [Name], [ImagePath], [Content], [PublishedDate], [CategoryID]) VALUES (8, N'Photos', N'http://cdn.simplesite.com/i/2b/ac/283445309157387307/i283445314544979644._szw1280h1280_.jpg', N' ', CAST(N'2018-11-16T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[Entry] ([ID], [Name], [ImagePath], [Content], [PublishedDate], [CategoryID]) VALUES (11, N'Sample Quotes', N'', N'"Hello world how are you"', CAST(N'2018-08-07T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Entry] ([ID], [Name], [ImagePath], [Content], [PublishedDate], [CategoryID]) VALUES (12, N'About Me', N'signature.PNG', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum.

Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores legere me lius quod ii legunt saepius. Claritas est etiam processus dynamicus, qui sequitur mutationem consuetudium lectorum. Mirum est notare quam littera gothica, quam nunc putamus parum claram, anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima. Eodem modo typi, qui nunc nobis videntur parum clari, fiant sollemnes in futurum. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores legere me lius quod ii legunt saepius. Claritas est etiam processus dynamicus, qui sequitur mutationem consuetudium lectorum. Mirum est notare quam littera gothica, quam nunc putamus parum claram, anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima. Eodem modo typi, qui nunc nobis videntur parum clari, fiant sollemnes in futurum.', CAST(N'1800-01-01T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[Entry] ([ID], [Name], [ImagePath], [Content], [PublishedDate], [CategoryID]) VALUES (17, N'Photos 2', N'http://cdn.simplesite.com/i/2b/ac/283445309157387307/i283445314544979644._szw1280h1280_.jpg', NULL, CAST(N'2010-01-01T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[Entry] ([ID], [Name], [ImagePath], [Content], [PublishedDate], [CategoryID]) VALUES (18, N'Ronaldo is the best', N'https://dj0j0ofql4htg.cloudfront.net/cms2/image_manager/uploads/News/233219/7/default.jpg', NULL, CAST(N'2010-01-01T00:00:00.000' AS DateTime), 2)
SET IDENTITY_INSERT [dbo].[Entry] OFF
ALTER TABLE [dbo].[Entry]  WITH CHECK ADD FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Category] ([ID])
GO
