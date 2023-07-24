USE [csi_web_pro]
GO
/****** Object:  Table [dbo].[attend]    Script Date: 6/15/2020 8:03:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[attend](
	[s_id] [varchar](15) NOT NULL,
	[sub] [varchar](15) NOT NULL,
	[tim] [datetime] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[deg]    Script Date: 6/15/2020 8:03:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[deg](
	[id] [varchar](15) NOT NULL,
	[sub] [int] NOT NULL,
	[sim] [int] NOT NULL CONSTRAINT [DF__deg__sim__14270015]  DEFAULT ((0)),
	[xaib] [int] NOT NULL CONSTRAINT [DF__deg__xaib__151B244E]  DEFAULT ((0)),
	[quez] [int] NOT NULL CONSTRAINT [DF__deg__quez__160F4887]  DEFAULT ((0)),
	[assim] [int] NOT NULL CONSTRAINT [DF__deg__assim__17036CC0]  DEFAULT ((0)),
	[rep] [int] NOT NULL CONSTRAINT [DF__deg__rep__17F790F9]  DEFAULT ((0)),
	[med] [int] NOT NULL CONSTRAINT [DF__deg__med__18EBB532]  DEFAULT ((0)),
	[t_exam] [int] NOT NULL CONSTRAINT [DF__deg__t_exam__19DFD96B]  DEFAULT ((0)),
	[p_exam] [int] NOT NULL CONSTRAINT [DF__deg__p_exam__1AD3FDA4]  DEFAULT ((0))
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[email]    Script Date: 6/15/2020 8:03:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[email](
	[id] [varchar](15) NOT NULL,
	[email] [varchar](max) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[fil]    Script Date: 6/15/2020 8:03:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[fil](
	[send] [varchar](15) NOT NULL,
	[to_] [varchar](15) NOT NULL,
	[fil] [nvarchar](max) NOT NULL,
	[note] [nvarchar](max) NOT NULL DEFAULT ('note........'),
	[tim] [datetime] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[phone]    Script Date: 6/15/2020 8:03:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[phone](
	[id] [varchar](15) NOT NULL,
	[ph] [varchar](max) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[rig]    Script Date: 6/15/2020 8:03:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[rig](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[f_name] [varchar](20) NOT NULL,
	[s_name] [varchar](20) NOT NULL,
	[th_name] [varchar](20) NOT NULL,
	[b_day] [datetime] NOT NULL,
	[gender] [varchar](20) NOT NULL,
	[sis] [varchar](20) NOT NULL,
	[dp] [varchar](20) NOT NULL,
	[t_d] [int] NOT NULL,
	[em] [nvarchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[std]    Script Date: 6/15/2020 8:03:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[std](
	[s_id] [varchar](15) NOT NULL,
	[f_name] [varchar](10) NOT NULL,
	[s_name] [varchar](10) NOT NULL,
	[th_name] [varchar](10) NOT NULL,
	[b_day] [datetime] NOT NULL,
	[gender] [varchar](6) NOT NULL,
	[salwrgrtn] [datetime] NOT NULL,
	[sstm] [varchar](15) NOT NULL,
	[sim] [int] NOT NULL,
	[deger] [int] NOT NULL,
	[img] [varchar](max) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[sub]    Script Date: 6/15/2020 8:03:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[sub](
	[sub_id] [int] NOT NULL,
	[sub_name] [varchar](20) NOT NULL,
	[sim] [int] NOT NULL,
	[dep] [varchar](15) NOT NULL,
 CONSTRAINT [PK__sub__694106B0E6FC97DB] PRIMARY KEY CLUSTERED 
(
	[sub_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_sub]    Script Date: 6/15/2020 8:03:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_sub](
	[t_id] [varchar](15) NOT NULL,
	[sub_id] [int] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tch]    Script Date: 6/15/2020 8:03:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tch](
	[id] [varchar](15) NOT NULL,
	[f_name] [varchar](15) NOT NULL,
	[s_name] [varchar](15) NOT NULL,
	[th_name] [varchar](10) NOT NULL,
	[b_day] [datetime] NOT NULL,
	[sim] [int] NULL,
	[em] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[usr]    Script Date: 6/15/2020 8:03:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[usr](
	[username] [varchar](15) NOT NULL,
	[pass] [varchar](10) NOT NULL,
	[dep] [varchar](10) NOT NULL,
	[per] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[attend] ([s_id], [sub], [tim]) VALUES (N'db', N'ddbms', CAST(N'2020-01-01 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[attend] ([s_id], [sub], [tim]) VALUES (N'db', N'ddbms', CAST(N'2020-06-13 21:24:25.000' AS DateTime))
GO
INSERT [dbo].[attend] ([s_id], [sub], [tim]) VALUES (N'db2', N'ddbms', CAST(N'2020-06-13 21:24:25.000' AS DateTime))
GO
INSERT [dbo].[attend] ([s_id], [sub], [tim]) VALUES (N'db3', N'ddbms', CAST(N'2020-06-13 21:24:25.000' AS DateTime))
GO
INSERT [dbo].[attend] ([s_id], [sub], [tim]) VALUES (N'db4', N'ddbms', CAST(N'2020-06-13 21:24:25.000' AS DateTime))
GO
INSERT [dbo].[attend] ([s_id], [sub], [tim]) VALUES (N'db5', N'ddbms', CAST(N'2020-06-13 21:24:25.000' AS DateTime))
GO
INSERT [dbo].[attend] ([s_id], [sub], [tim]) VALUES (N'db6', N'ddbms', CAST(N'2020-06-13 21:24:25.000' AS DateTime))
GO
INSERT [dbo].[attend] ([s_id], [sub], [tim]) VALUES (N'db', N'ddbms', CAST(N'2020-06-13 21:56:13.000' AS DateTime))
GO
INSERT [dbo].[attend] ([s_id], [sub], [tim]) VALUES (N'db2', N'ddbms', CAST(N'2020-06-13 21:56:13.000' AS DateTime))
GO
INSERT [dbo].[attend] ([s_id], [sub], [tim]) VALUES (N'db3', N'ddbms', CAST(N'2020-06-13 21:56:13.000' AS DateTime))
GO
INSERT [dbo].[attend] ([s_id], [sub], [tim]) VALUES (N'db4', N'ddbms', CAST(N'2020-06-13 21:56:13.000' AS DateTime))
GO
INSERT [dbo].[attend] ([s_id], [sub], [tim]) VALUES (N'db5', N'ddbms', CAST(N'2020-06-13 21:56:13.000' AS DateTime))
GO
INSERT [dbo].[attend] ([s_id], [sub], [tim]) VALUES (N'db6', N'ddbms', CAST(N'2020-06-13 21:56:13.000' AS DateTime))
GO
INSERT [dbo].[attend] ([s_id], [sub], [tim]) VALUES (N'db', N'ddbms', CAST(N'2020-06-13 21:56:14.000' AS DateTime))
GO
INSERT [dbo].[attend] ([s_id], [sub], [tim]) VALUES (N'db2', N'ddbms', CAST(N'2020-06-13 21:56:14.000' AS DateTime))
GO
INSERT [dbo].[attend] ([s_id], [sub], [tim]) VALUES (N'db3', N'ddbms', CAST(N'2020-06-13 21:56:14.000' AS DateTime))
GO
INSERT [dbo].[attend] ([s_id], [sub], [tim]) VALUES (N'db4', N'ddbms', CAST(N'2020-06-13 21:56:14.000' AS DateTime))
GO
INSERT [dbo].[attend] ([s_id], [sub], [tim]) VALUES (N'db5', N'ddbms', CAST(N'2020-06-13 21:56:14.000' AS DateTime))
GO
INSERT [dbo].[attend] ([s_id], [sub], [tim]) VALUES (N'db6', N'ddbms', CAST(N'2020-06-13 21:56:14.000' AS DateTime))
GO
INSERT [dbo].[attend] ([s_id], [sub], [tim]) VALUES (N'db', N'ddbms', CAST(N'2020-06-13 21:56:15.000' AS DateTime))
GO
INSERT [dbo].[attend] ([s_id], [sub], [tim]) VALUES (N'db2', N'ddbms', CAST(N'2020-06-13 21:56:15.000' AS DateTime))
GO
INSERT [dbo].[attend] ([s_id], [sub], [tim]) VALUES (N'db3', N'ddbms', CAST(N'2020-06-13 21:56:15.000' AS DateTime))
GO
INSERT [dbo].[attend] ([s_id], [sub], [tim]) VALUES (N'db4', N'ddbms', CAST(N'2020-06-13 21:56:15.000' AS DateTime))
GO
INSERT [dbo].[attend] ([s_id], [sub], [tim]) VALUES (N'db5', N'ddbms', CAST(N'2020-06-13 21:56:15.000' AS DateTime))
GO
INSERT [dbo].[attend] ([s_id], [sub], [tim]) VALUES (N'db6', N'ddbms', CAST(N'2020-06-13 21:56:15.000' AS DateTime))
GO
INSERT [dbo].[attend] ([s_id], [sub], [tim]) VALUES (N'db', N'ddbms', CAST(N'2020-06-13 21:56:15.000' AS DateTime))
GO
INSERT [dbo].[attend] ([s_id], [sub], [tim]) VALUES (N'db2', N'ddbms', CAST(N'2020-06-13 21:56:15.000' AS DateTime))
GO
INSERT [dbo].[attend] ([s_id], [sub], [tim]) VALUES (N'db3', N'ddbms', CAST(N'2020-06-13 21:56:15.000' AS DateTime))
GO
INSERT [dbo].[attend] ([s_id], [sub], [tim]) VALUES (N'db4', N'ddbms', CAST(N'2020-06-13 21:56:15.000' AS DateTime))
GO
INSERT [dbo].[attend] ([s_id], [sub], [tim]) VALUES (N'db5', N'ddbms', CAST(N'2020-06-13 21:56:15.000' AS DateTime))
GO
INSERT [dbo].[attend] ([s_id], [sub], [tim]) VALUES (N'db6', N'ddbms', CAST(N'2020-06-13 21:56:15.000' AS DateTime))
GO
INSERT [dbo].[attend] ([s_id], [sub], [tim]) VALUES (N'db', N'ddbms', CAST(N'2020-06-13 21:56:15.000' AS DateTime))
GO
INSERT [dbo].[attend] ([s_id], [sub], [tim]) VALUES (N'db2', N'ddbms', CAST(N'2020-06-13 21:56:15.000' AS DateTime))
GO
INSERT [dbo].[attend] ([s_id], [sub], [tim]) VALUES (N'db3', N'ddbms', CAST(N'2020-06-13 21:56:15.000' AS DateTime))
GO
INSERT [dbo].[attend] ([s_id], [sub], [tim]) VALUES (N'db4', N'ddbms', CAST(N'2020-06-13 21:56:15.000' AS DateTime))
GO
INSERT [dbo].[attend] ([s_id], [sub], [tim]) VALUES (N'db5', N'ddbms', CAST(N'2020-06-13 21:56:15.000' AS DateTime))
GO
INSERT [dbo].[attend] ([s_id], [sub], [tim]) VALUES (N'db6', N'ddbms', CAST(N'2020-06-13 21:56:15.000' AS DateTime))
GO
INSERT [dbo].[attend] ([s_id], [sub], [tim]) VALUES (N'db', N'ddbms', CAST(N'2020-06-13 21:56:15.000' AS DateTime))
GO
INSERT [dbo].[attend] ([s_id], [sub], [tim]) VALUES (N'db2', N'ddbms', CAST(N'2020-06-13 21:56:15.000' AS DateTime))
GO
INSERT [dbo].[attend] ([s_id], [sub], [tim]) VALUES (N'db3', N'ddbms', CAST(N'2020-06-13 21:56:15.000' AS DateTime))
GO
INSERT [dbo].[attend] ([s_id], [sub], [tim]) VALUES (N'db4', N'ddbms', CAST(N'2020-06-13 21:56:15.000' AS DateTime))
GO
INSERT [dbo].[attend] ([s_id], [sub], [tim]) VALUES (N'db5', N'ddbms', CAST(N'2020-06-13 21:56:15.000' AS DateTime))
GO
INSERT [dbo].[attend] ([s_id], [sub], [tim]) VALUES (N'db6', N'ddbms', CAST(N'2020-06-13 21:56:15.000' AS DateTime))
GO
INSERT [dbo].[attend] ([s_id], [sub], [tim]) VALUES (N'db', N'ddbms', CAST(N'2020-06-13 21:56:16.000' AS DateTime))
GO
INSERT [dbo].[attend] ([s_id], [sub], [tim]) VALUES (N'db2', N'ddbms', CAST(N'2020-06-13 21:56:16.000' AS DateTime))
GO
INSERT [dbo].[attend] ([s_id], [sub], [tim]) VALUES (N'db3', N'ddbms', CAST(N'2020-06-13 21:56:16.000' AS DateTime))
GO
INSERT [dbo].[attend] ([s_id], [sub], [tim]) VALUES (N'db4', N'ddbms', CAST(N'2020-06-13 21:56:16.000' AS DateTime))
GO
INSERT [dbo].[attend] ([s_id], [sub], [tim]) VALUES (N'db5', N'ddbms', CAST(N'2020-06-13 21:56:16.000' AS DateTime))
GO
INSERT [dbo].[attend] ([s_id], [sub], [tim]) VALUES (N'db6', N'ddbms', CAST(N'2020-06-13 21:56:16.000' AS DateTime))
GO
INSERT [dbo].[attend] ([s_id], [sub], [tim]) VALUES (N'db', N'ddbms', CAST(N'2020-06-13 21:56:16.000' AS DateTime))
GO
INSERT [dbo].[attend] ([s_id], [sub], [tim]) VALUES (N'db2', N'ddbms', CAST(N'2020-06-13 21:56:16.000' AS DateTime))
GO
INSERT [dbo].[attend] ([s_id], [sub], [tim]) VALUES (N'db3', N'ddbms', CAST(N'2020-06-13 21:56:16.000' AS DateTime))
GO
INSERT [dbo].[attend] ([s_id], [sub], [tim]) VALUES (N'db4', N'ddbms', CAST(N'2020-06-13 21:56:16.000' AS DateTime))
GO
INSERT [dbo].[attend] ([s_id], [sub], [tim]) VALUES (N'db5', N'ddbms', CAST(N'2020-06-13 21:56:16.000' AS DateTime))
GO
INSERT [dbo].[attend] ([s_id], [sub], [tim]) VALUES (N'db6', N'ddbms', CAST(N'2020-06-13 21:56:16.000' AS DateTime))
GO
INSERT [dbo].[attend] ([s_id], [sub], [tim]) VALUES (N'db', N'ddbms', CAST(N'2020-06-14 18:49:44.000' AS DateTime))
GO
INSERT [dbo].[attend] ([s_id], [sub], [tim]) VALUES (N'db2', N'ddbms', CAST(N'2020-06-14 18:49:44.000' AS DateTime))
GO
INSERT [dbo].[attend] ([s_id], [sub], [tim]) VALUES (N'db3', N'ddbms', CAST(N'2020-06-14 18:49:44.000' AS DateTime))
GO
INSERT [dbo].[attend] ([s_id], [sub], [tim]) VALUES (N'db4', N'ddbms', CAST(N'2020-06-14 18:49:44.000' AS DateTime))
GO
INSERT [dbo].[attend] ([s_id], [sub], [tim]) VALUES (N'db5', N'ddbms', CAST(N'2020-06-14 18:49:44.000' AS DateTime))
GO
INSERT [dbo].[attend] ([s_id], [sub], [tim]) VALUES (N'db6', N'ddbms', CAST(N'2020-06-14 18:49:44.000' AS DateTime))
GO
INSERT [dbo].[attend] ([s_id], [sub], [tim]) VALUES (N'k', N'ddbms', CAST(N'2020-06-14 18:49:44.000' AS DateTime))
GO
INSERT [dbo].[attend] ([s_id], [sub], [tim]) VALUES (N'f', N'ddbms', CAST(N'2020-06-14 18:49:44.000' AS DateTime))
GO
INSERT [dbo].[attend] ([s_id], [sub], [tim]) VALUES (N'op', N'ddbms', CAST(N'2020-06-14 18:49:44.000' AS DateTime))
GO
INSERT [dbo].[attend] ([s_id], [sub], [tim]) VALUES (N'db', N'ddbms', CAST(N'2020-06-14 18:49:48.000' AS DateTime))
GO
INSERT [dbo].[attend] ([s_id], [sub], [tim]) VALUES (N'db2', N'ddbms', CAST(N'2020-06-14 18:49:48.000' AS DateTime))
GO
INSERT [dbo].[attend] ([s_id], [sub], [tim]) VALUES (N'db3', N'ddbms', CAST(N'2020-06-14 18:49:48.000' AS DateTime))
GO
INSERT [dbo].[attend] ([s_id], [sub], [tim]) VALUES (N'db4', N'ddbms', CAST(N'2020-06-14 18:49:48.000' AS DateTime))
GO
INSERT [dbo].[attend] ([s_id], [sub], [tim]) VALUES (N'db5', N'ddbms', CAST(N'2020-06-14 18:49:48.000' AS DateTime))
GO
INSERT [dbo].[attend] ([s_id], [sub], [tim]) VALUES (N'db6', N'ddbms', CAST(N'2020-06-14 18:49:48.000' AS DateTime))
GO
INSERT [dbo].[attend] ([s_id], [sub], [tim]) VALUES (N'k', N'ddbms', CAST(N'2020-06-14 18:49:48.000' AS DateTime))
GO
INSERT [dbo].[attend] ([s_id], [sub], [tim]) VALUES (N'f', N'ddbms', CAST(N'2020-06-14 18:49:48.000' AS DateTime))
GO
INSERT [dbo].[attend] ([s_id], [sub], [tim]) VALUES (N'op', N'ddbms', CAST(N'2020-06-14 18:49:48.000' AS DateTime))
GO
INSERT [dbo].[attend] ([s_id], [sub], [tim]) VALUES (N'db', N'ddbms', CAST(N'2020-06-14 18:49:49.000' AS DateTime))
GO
INSERT [dbo].[attend] ([s_id], [sub], [tim]) VALUES (N'db2', N'ddbms', CAST(N'2020-06-14 18:49:49.000' AS DateTime))
GO
INSERT [dbo].[attend] ([s_id], [sub], [tim]) VALUES (N'db3', N'ddbms', CAST(N'2020-06-14 18:49:49.000' AS DateTime))
GO
INSERT [dbo].[attend] ([s_id], [sub], [tim]) VALUES (N'db4', N'ddbms', CAST(N'2020-06-14 18:49:49.000' AS DateTime))
GO
INSERT [dbo].[attend] ([s_id], [sub], [tim]) VALUES (N'db5', N'ddbms', CAST(N'2020-06-14 18:49:49.000' AS DateTime))
GO
INSERT [dbo].[attend] ([s_id], [sub], [tim]) VALUES (N'db6', N'ddbms', CAST(N'2020-06-14 18:49:49.000' AS DateTime))
GO
INSERT [dbo].[attend] ([s_id], [sub], [tim]) VALUES (N'k', N'ddbms', CAST(N'2020-06-14 18:49:49.000' AS DateTime))
GO
INSERT [dbo].[attend] ([s_id], [sub], [tim]) VALUES (N'f', N'ddbms', CAST(N'2020-06-14 18:49:49.000' AS DateTime))
GO
INSERT [dbo].[attend] ([s_id], [sub], [tim]) VALUES (N'op', N'ddbms', CAST(N'2020-06-14 18:49:49.000' AS DateTime))
GO
INSERT [dbo].[deg] ([id], [sub], [sim], [xaib], [quez], [assim], [rep], [med], [t_exam], [p_exam]) VALUES (N'db', 1, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[deg] ([id], [sub], [sim], [xaib], [quez], [assim], [rep], [med], [t_exam], [p_exam]) VALUES (N'db', 2, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[deg] ([id], [sub], [sim], [xaib], [quez], [assim], [rep], [med], [t_exam], [p_exam]) VALUES (N'db', 3, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[deg] ([id], [sub], [sim], [xaib], [quez], [assim], [rep], [med], [t_exam], [p_exam]) VALUES (N'db', 4, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[deg] ([id], [sub], [sim], [xaib], [quez], [assim], [rep], [med], [t_exam], [p_exam]) VALUES (N'db', 5, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[deg] ([id], [sub], [sim], [xaib], [quez], [assim], [rep], [med], [t_exam], [p_exam]) VALUES (N'db', 6, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[deg] ([id], [sub], [sim], [xaib], [quez], [assim], [rep], [med], [t_exam], [p_exam]) VALUES (N'db', 7, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[deg] ([id], [sub], [sim], [xaib], [quez], [assim], [rep], [med], [t_exam], [p_exam]) VALUES (N'db', 8, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[deg] ([id], [sub], [sim], [xaib], [quez], [assim], [rep], [med], [t_exam], [p_exam]) VALUES (N'db', 9, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[deg] ([id], [sub], [sim], [xaib], [quez], [assim], [rep], [med], [t_exam], [p_exam]) VALUES (N'db', 10, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[deg] ([id], [sub], [sim], [xaib], [quez], [assim], [rep], [med], [t_exam], [p_exam]) VALUES (N'db', 11, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[deg] ([id], [sub], [sim], [xaib], [quez], [assim], [rep], [med], [t_exam], [p_exam]) VALUES (N'db', 12, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[deg] ([id], [sub], [sim], [xaib], [quez], [assim], [rep], [med], [t_exam], [p_exam]) VALUES (N'db', 13, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[deg] ([id], [sub], [sim], [xaib], [quez], [assim], [rep], [med], [t_exam], [p_exam]) VALUES (N'db', 14, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[deg] ([id], [sub], [sim], [xaib], [quez], [assim], [rep], [med], [t_exam], [p_exam]) VALUES (N'db', 15, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[deg] ([id], [sub], [sim], [xaib], [quez], [assim], [rep], [med], [t_exam], [p_exam]) VALUES (N'db', 16, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[deg] ([id], [sub], [sim], [xaib], [quez], [assim], [rep], [med], [t_exam], [p_exam]) VALUES (N'db', 17, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[deg] ([id], [sub], [sim], [xaib], [quez], [assim], [rep], [med], [t_exam], [p_exam]) VALUES (N'db', 18, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[deg] ([id], [sub], [sim], [xaib], [quez], [assim], [rep], [med], [t_exam], [p_exam]) VALUES (N'db', 19, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[deg] ([id], [sub], [sim], [xaib], [quez], [assim], [rep], [med], [t_exam], [p_exam]) VALUES (N'db', 20, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[deg] ([id], [sub], [sim], [xaib], [quez], [assim], [rep], [med], [t_exam], [p_exam]) VALUES (N'db', 21, 3, 3, 3, 3, 3, 3, 3, 3)
GO
INSERT [dbo].[deg] ([id], [sub], [sim], [xaib], [quez], [assim], [rep], [med], [t_exam], [p_exam]) VALUES (N'db', 22, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[email] ([id], [email]) VALUES (N'db', N'yahyahiwa3@gmail/com')
GO
INSERT [dbo].[email] ([id], [email]) VALUES (N'db', N'yahyahewa@gmail.com')
GO
INSERT [dbo].[fil] ([send], [to_], [fil], [note], [tim]) VALUES (N'db', N'haval', N'~/data/Data Replication in DBMS.pdf', N'lk', CAST(N'2020-06-13 08:33:30.083' AS DateTime))
GO
INSERT [dbo].[fil] ([send], [to_], [fil], [note], [tim]) VALUES (N'db', N'haval', N'~/data/New Text Document (2).txt', N'Note any note ....', CAST(N'2020-06-13 06:39:26.653' AS DateTime))
GO
INSERT [dbo].[fil] ([send], [to_], [fil], [note], [tim]) VALUES (N'db', N'haval', N'~/data/y1.jpg', N'Note any note ....', CAST(N'2020-06-13 09:03:53.380' AS DateTime))
GO
INSERT [dbo].[fil] ([send], [to_], [fil], [note], [tim]) VALUES (N'db', N'haval', N'~/data/Centralized, Decentralized and Distributed Systems.pdf', N'Note any note ....', CAST(N'2020-06-13 18:49:08.783' AS DateTime))
GO
INSERT [dbo].[phone] ([id], [ph]) VALUES (N'db', N'07501584451')
GO
INSERT [dbo].[phone] ([id], [ph]) VALUES (N'db', N'07701961338')
GO
SET IDENTITY_INSERT [dbo].[rig] ON 

GO
INSERT [dbo].[rig] ([id], [f_name], [s_name], [th_name], [b_day], [gender], [sis], [dp], [t_d], [em]) VALUES (1, N'yahya', N'hiwa', N'rauf', CAST(N'2020-06-10 00:00:00.000' AS DateTime), N'male', N'evening', N'database', 67, N'yahyahiwa3@gmail.com')
GO
INSERT [dbo].[rig] ([id], [f_name], [s_name], [th_name], [b_day], [gender], [sis], [dp], [t_d], [em]) VALUES (2, N'y', N'y', N'y', CAST(N'2020-05-31 00:00:00.000' AS DateTime), N'male', N'evening', N'database', 12, N'yahyahiwa3@gmail.com')
GO
INSERT [dbo].[rig] ([id], [f_name], [s_name], [th_name], [b_day], [gender], [sis], [dp], [t_d], [em]) VALUES (3, N'yahya', N'hiwa', N'rauf', CAST(N'2019-12-09 00:00:00.000' AS DateTime), N'male', N'evening', N'database', 67, N'yahyahiwa3@gmail.com')
GO
INSERT [dbo].[rig] ([id], [f_name], [s_name], [th_name], [b_day], [gender], [sis], [dp], [t_d], [em]) VALUES (4, N'yahya', N'hiwa', N'rauf', CAST(N'2019-12-09 00:00:00.000' AS DateTime), N'male', N'evening', N'database', 67, N'yahyahiwa3@oulooker.com')
GO
INSERT [dbo].[rig] ([id], [f_name], [s_name], [th_name], [b_day], [gender], [sis], [dp], [t_d], [em]) VALUES (5, N'yahya', N'hiwa', N'rauf', CAST(N'2019-12-09 00:00:00.000' AS DateTime), N'male', N'evening', N'database', 67, N'yahyahiwa3@outlooker.com')
GO
SET IDENTITY_INSERT [dbo].[rig] OFF
GO
INSERT [dbo].[std] ([s_id], [f_name], [s_name], [th_name], [b_day], [gender], [salwrgrtn], [sstm], [sim], [deger], [img]) VALUES (N'db', N'yahya', N'hiwa', N'rauf', CAST(N'1999-03-09 00:00:00.000' AS DateTime), N'male', CAST(N'2020-01-01 00:00:00.000' AS DateTime), N'evening', 1, 70, N'~/img/y1.jpg')
GO
INSERT [dbo].[std] ([s_id], [f_name], [s_name], [th_name], [b_day], [gender], [salwrgrtn], [sstm], [sim], [deger], [img]) VALUES (N'db2', N'sara', N'esa', N'salh', CAST(N'1999-01-01 00:00:00.000' AS DateTime), N'female', CAST(N'2020-01-01 00:00:00.000' AS DateTime), N'evening', 1, 71, N'~/img/Capture.PNG')
GO
INSERT [dbo].[std] ([s_id], [f_name], [s_name], [th_name], [b_day], [gender], [salwrgrtn], [sstm], [sim], [deger], [img]) VALUES (N'net', N'hawraman', N'amin', N'mhmad', CAST(N'1998-01-01 00:00:00.000' AS DateTime), N'male', CAST(N'2020-01-01 00:00:00.000' AS DateTime), N'evening', 1, 72, N'~/img/Capture.PNG')
GO
INSERT [dbo].[std] ([s_id], [f_name], [s_name], [th_name], [b_day], [gender], [salwrgrtn], [sstm], [sim], [deger], [img]) VALUES (N'net2', N'sewang', N'ahmad', N'salh', CAST(N'1999-01-02 00:00:00.000' AS DateTime), N'male', CAST(N'2020-01-01 00:00:00.000' AS DateTime), N'evening', 1, 73, N'~/img/Capture.PNG')
GO
INSERT [dbo].[std] ([s_id], [f_name], [s_name], [th_name], [b_day], [gender], [salwrgrtn], [sstm], [sim], [deger], [img]) VALUES (N'it', N'mhamad', N'xalil', N'karim', CAST(N'2000-01-02 00:00:00.000' AS DateTime), N'male', CAST(N'2020-01-02 00:00:00.000' AS DateTime), N'evening', 1, 74, N'~/img/Capture.PNG')
GO
INSERT [dbo].[std] ([s_id], [f_name], [s_name], [th_name], [b_day], [gender], [salwrgrtn], [sstm], [sim], [deger], [img]) VALUES (N'it2', N'sozan', N'kamal', N'ahmad', CAST(N'2000-04-05 00:00:00.000' AS DateTime), N'female', CAST(N'2020-01-01 00:00:00.000' AS DateTime), N'evening', 1, 75, N'~/img/Capture.PNG')
GO
INSERT [dbo].[std] ([s_id], [f_name], [s_name], [th_name], [b_day], [gender], [salwrgrtn], [sstm], [sim], [deger], [img]) VALUES (N'db3', N'sirwan', N'qasm', N'mahmud', CAST(N'1999-07-08 00:00:00.000' AS DateTime), N'male', CAST(N'2020-03-02 00:00:00.000' AS DateTime), N'parallel', 1, 60, N'~/img/Capture.PNG')
GO
INSERT [dbo].[std] ([s_id], [f_name], [s_name], [th_name], [b_day], [gender], [salwrgrtn], [sstm], [sim], [deger], [img]) VALUES (N'db4', N'zhino', N'rzgar', N'nasih', CAST(N'1999-02-08 00:00:00.000' AS DateTime), N'female', CAST(N'2020-01-01 00:00:00.000' AS DateTime), N'parallel', 1, 62, N'~/img/Capture.PNG')
GO
INSERT [dbo].[std] ([s_id], [f_name], [s_name], [th_name], [b_day], [gender], [salwrgrtn], [sstm], [sim], [deger], [img]) VALUES (N'net3', N'saman', N'omer', N'karim', CAST(N'2000-02-09 00:00:00.000' AS DateTime), N'male', CAST(N'2020-01-01 00:00:00.000' AS DateTime), N'parallel', 1, 63, N'~/img/Capture.PNG')
GO
INSERT [dbo].[std] ([s_id], [f_name], [s_name], [th_name], [b_day], [gender], [salwrgrtn], [sstm], [sim], [deger], [img]) VALUES (N'net4', N'kazhe', N'hallo', N'sherko', CAST(N'2000-10-09 00:00:00.000' AS DateTime), N'female', CAST(N'2020-01-01 00:00:00.000' AS DateTime), N'parallel', 1, 61, N'~/img/Capture.PNG')
GO
INSERT [dbo].[std] ([s_id], [f_name], [s_name], [th_name], [b_day], [gender], [salwrgrtn], [sstm], [sim], [deger], [img]) VALUES (N'it3', N'kalle', N'hallo', N'sherko', CAST(N'1998-03-02 00:00:00.000' AS DateTime), N'female', CAST(N'2020-01-01 00:00:00.000' AS DateTime), N'parallel', 1, 62, N'~/img/Capture.PNG')
GO
INSERT [dbo].[std] ([s_id], [f_name], [s_name], [th_name], [b_day], [gender], [salwrgrtn], [sstm], [sim], [deger], [img]) VALUES (N'it4', N'hiwa', N'rauf', N'hama amin', CAST(N'1999-01-07 00:00:00.000' AS DateTime), N'male', CAST(N'2020-01-01 00:00:00.000' AS DateTime), N'parallel', 1, 61, N'~/img/Capture.PNG')
GO
INSERT [dbo].[std] ([s_id], [f_name], [s_name], [th_name], [b_day], [gender], [salwrgrtn], [sstm], [sim], [deger], [img]) VALUES (N'db5', N'shirwan', N'shamal', N'ali', CAST(N'1997-01-02 00:00:00.000' AS DateTime), N'male', CAST(N'2020-01-01 00:00:00.000' AS DateTime), N'morning', 1, 55, N'~/img/Capture.PNG')
GO
INSERT [dbo].[std] ([s_id], [f_name], [s_name], [th_name], [b_day], [gender], [salwrgrtn], [sstm], [sim], [deger], [img]) VALUES (N'db6', N'karwan', N'ahmad', N'sharif', CAST(N'1996-01-07 00:00:00.000' AS DateTime), N'male', CAST(N'2020-01-01 00:00:00.000' AS DateTime), N'morning', 1, 56, N'~/img/Capture.PNG')
GO
INSERT [dbo].[std] ([s_id], [f_name], [s_name], [th_name], [b_day], [gender], [salwrgrtn], [sstm], [sim], [deger], [img]) VALUES (N'net5', N'azhwan', N'fazil', N'nasih', CAST(N'1999-07-08 00:00:00.000' AS DateTime), N'male', CAST(N'2020-01-01 00:00:00.000' AS DateTime), N'morning', 1, 54, N'~/img/Capture.PNG')
GO
INSERT [dbo].[std] ([s_id], [f_name], [s_name], [th_name], [b_day], [gender], [salwrgrtn], [sstm], [sim], [deger], [img]) VALUES (N'net6', N'gardy', N'karwan', N'aram', CAST(N'1999-01-02 00:00:00.000' AS DateTime), N'male', CAST(N'2020-03-04 00:00:00.000' AS DateTime), N'morning', 1, 52, N'~/img/Capture.PNG')
GO
INSERT [dbo].[std] ([s_id], [f_name], [s_name], [th_name], [b_day], [gender], [salwrgrtn], [sstm], [sim], [deger], [img]) VALUES (N'it5', N'fazil', N'faraidun', N'fryad', CAST(N'1995-09-06 00:00:00.000' AS DateTime), N'male', CAST(N'2020-02-03 00:00:00.000' AS DateTime), N'morning', 1, 57, N'~/img/Capture.PNG')
GO
INSERT [dbo].[std] ([s_id], [f_name], [s_name], [th_name], [b_day], [gender], [salwrgrtn], [sstm], [sim], [deger], [img]) VALUES (N'it6', N'didar', N'dara', N'sharif', CAST(N'2020-01-02 00:00:00.000' AS DateTime), N'male', CAST(N'2020-12-10 00:00:00.000' AS DateTime), N'morning', 1, 59, N'~/img/Capture.PNG')
GO
INSERT [dbo].[std] ([s_id], [f_name], [s_name], [th_name], [b_day], [gender], [salwrgrtn], [sstm], [sim], [deger], [img]) VALUES (N'k', N'kizhan', N'sdiq', N'rauf', CAST(N'2000-06-07 00:00:00.000' AS DateTime), N'male', CAST(N'2020-01-02 00:00:00.000' AS DateTime), N'evening', 1, 78, N'~/img/Capture.PNG')
GO
INSERT [dbo].[std] ([s_id], [f_name], [s_name], [th_name], [b_day], [gender], [salwrgrtn], [sstm], [sim], [deger], [img]) VALUES (N'f', N'f', N'f', N'f', CAST(N'2020-06-16 00:00:00.000' AS DateTime), N'male', CAST(N'2020-01-01 00:00:00.000' AS DateTime), N'evening', 1, 67, N'~/img/y1.jpg')
GO
INSERT [dbo].[std] ([s_id], [f_name], [s_name], [th_name], [b_day], [gender], [salwrgrtn], [sstm], [sim], [deger], [img]) VALUES (N'op', N'derin', N'sabah', N'said', CAST(N'2018-09-04 00:00:00.000' AS DateTime), N'male', CAST(N'2020-01-01 00:00:00.000' AS DateTime), N'evening', 1, 67, N'~/img/y2.jpg')
GO
INSERT [dbo].[sub] ([sub_id], [sub_name], [sim], [dep]) VALUES (1, N'web html', 1, N'database')
GO
INSERT [dbo].[sub] ([sub_id], [sub_name], [sim], [dep]) VALUES (2, N'web css', 2, N'database')
GO
INSERT [dbo].[sub] ([sub_id], [sub_name], [sim], [dep]) VALUES (3, N'english', 1, N'database')
GO
INSERT [dbo].[sub] ([sub_id], [sub_name], [sim], [dep]) VALUES (4, N'english', 2, N'database')
GO
INSERT [dbo].[sub] ([sub_id], [sub_name], [sim], [dep]) VALUES (5, N'database', 1, N'database')
GO
INSERT [dbo].[sub] ([sub_id], [sub_name], [sim], [dep]) VALUES (6, N'acadimy', 1, N'database')
GO
INSERT [dbo].[sub] ([sub_id], [sub_name], [sim], [dep]) VALUES (7, N'k.logy', 1, N'database')
GO
INSERT [dbo].[sub] ([sub_id], [sub_name], [sim], [dep]) VALUES (8, N'it', 1, N'database')
GO
INSERT [dbo].[sub] ([sub_id], [sub_name], [sim], [dep]) VALUES (9, N'c#', 1, N'database')
GO
INSERT [dbo].[sub] ([sub_id], [sub_name], [sim], [dep]) VALUES (10, N'c# oop', 2, N'database')
GO
INSERT [dbo].[sub] ([sub_id], [sub_name], [sim], [dep]) VALUES (11, N'database', 2, N'database')
GO
INSERT [dbo].[sub] ([sub_id], [sub_name], [sim], [dep]) VALUES (12, N'logic', 2, N'database')
GO
INSERT [dbo].[sub] ([sub_id], [sub_name], [sim], [dep]) VALUES (13, N'math', 2, N'database')
GO
INSERT [dbo].[sub] ([sub_id], [sub_name], [sim], [dep]) VALUES (14, N'it', 2, N'database')
GO
INSERT [dbo].[sub] ([sub_id], [sub_name], [sim], [dep]) VALUES (15, N'c# gui', 3, N'database')
GO
INSERT [dbo].[sub] ([sub_id], [sub_name], [sim], [dep]) VALUES (16, N'dbms', 3, N'database')
GO
INSERT [dbo].[sub] ([sub_id], [sub_name], [sim], [dep]) VALUES (17, N'datamining', 3, N'database')
GO
INSERT [dbo].[sub] ([sub_id], [sub_name], [sim], [dep]) VALUES (18, N'web j.script', 3, N'database')
GO
INSERT [dbo].[sub] ([sub_id], [sub_name], [sim], [dep]) VALUES (19, N'network', 3, N'database')
GO
INSERT [dbo].[sub] ([sub_id], [sub_name], [sim], [dep]) VALUES (20, N'iot', 4, N'database')
GO
INSERT [dbo].[sub] ([sub_id], [sub_name], [sim], [dep]) VALUES (21, N'ddbms', 4, N'database')
GO
INSERT [dbo].[sub] ([sub_id], [sub_name], [sim], [dep]) VALUES (22, N'web server', 4, N'database')
GO
INSERT [dbo].[t_sub] ([t_id], [sub_id]) VALUES (N'haval', 21)
GO
INSERT [dbo].[t_sub] ([t_id], [sub_id]) VALUES (N'chra', 20)
GO
INSERT [dbo].[tch] ([id], [f_name], [s_name], [th_name], [b_day], [sim], [em]) VALUES (N'haval', N'haval', N'mhamad', N'sdqi', CAST(N'1970-01-01 00:00:00.000' AS DateTime), 1, N'Sham.Tawfiq1@gmail.com ')
GO
INSERT [dbo].[tch] ([id], [f_name], [s_name], [th_name], [b_day], [sim], [em]) VALUES (N'sham', N'sham', N'tofiq', N'mhamad', CAST(N'1975-01-01 00:00:00.000' AS DateTime), 1, N'Sham.Tawfiq1@gmail.com ')
GO
INSERT [dbo].[tch] ([id], [f_name], [s_name], [th_name], [b_day], [sim], [em]) VALUES (N'chra', N'chra', N'ali', N'ah,ad', CAST(N'1980-01-01 00:00:00.000' AS DateTime), 1, N'Sham.Tawfiq1@gmail.com ')
GO
INSERT [dbo].[tch] ([id], [f_name], [s_name], [th_name], [b_day], [sim], [em]) VALUES (N'pl', N'p', N'p', N'p', CAST(N'2020-06-01 00:00:00.000' AS DateTime), 1, N'Sham.Tawfiq1@gmail.com ')
GO
INSERT [dbo].[usr] ([username], [pass], [dep], [per]) VALUES (N'', N'', N'database', N'tch')
GO
INSERT [dbo].[usr] ([username], [pass], [dep], [per]) VALUES (N'adm', N'adm', N'database', N'adm')
GO
INSERT [dbo].[usr] ([username], [pass], [dep], [per]) VALUES (N'chra', N'chra', N'database', N'tch')
GO
INSERT [dbo].[usr] ([username], [pass], [dep], [per]) VALUES (N'db', N'123', N'database', N'std')
GO
INSERT [dbo].[usr] ([username], [pass], [dep], [per]) VALUES (N'db2', N'db', N'database', N'std')
GO
INSERT [dbo].[usr] ([username], [pass], [dep], [per]) VALUES (N'db3', N'db', N'database', N'std')
GO
INSERT [dbo].[usr] ([username], [pass], [dep], [per]) VALUES (N'db4', N'db', N'database', N'std')
GO
INSERT [dbo].[usr] ([username], [pass], [dep], [per]) VALUES (N'db5', N'db', N'database', N'std')
GO
INSERT [dbo].[usr] ([username], [pass], [dep], [per]) VALUES (N'db6', N'db', N'database', N'std')
GO
INSERT [dbo].[usr] ([username], [pass], [dep], [per]) VALUES (N'f', N'123', N'database', N'std')
GO
INSERT [dbo].[usr] ([username], [pass], [dep], [per]) VALUES (N'haval', N'haval', N'database', N'tch')
GO
INSERT [dbo].[usr] ([username], [pass], [dep], [per]) VALUES (N'it', N'it', N'it', N'std')
GO
INSERT [dbo].[usr] ([username], [pass], [dep], [per]) VALUES (N'it2', N'it', N'it', N'std')
GO
INSERT [dbo].[usr] ([username], [pass], [dep], [per]) VALUES (N'it3', N'it', N'it', N'std')
GO
INSERT [dbo].[usr] ([username], [pass], [dep], [per]) VALUES (N'it4', N'it', N'it', N'std')
GO
INSERT [dbo].[usr] ([username], [pass], [dep], [per]) VALUES (N'it5', N'it', N'it', N'std')
GO
INSERT [dbo].[usr] ([username], [pass], [dep], [per]) VALUES (N'it6', N'it', N'it', N'std')
GO
INSERT [dbo].[usr] ([username], [pass], [dep], [per]) VALUES (N'k', N'k', N'database', N'std')
GO
INSERT [dbo].[usr] ([username], [pass], [dep], [per]) VALUES (N'net', N'net', N'network', N'std')
GO
INSERT [dbo].[usr] ([username], [pass], [dep], [per]) VALUES (N'net2', N'net', N'network', N'std')
GO
INSERT [dbo].[usr] ([username], [pass], [dep], [per]) VALUES (N'net3', N'net', N'network', N'std')
GO
INSERT [dbo].[usr] ([username], [pass], [dep], [per]) VALUES (N'net4', N'net', N'network', N'std')
GO
INSERT [dbo].[usr] ([username], [pass], [dep], [per]) VALUES (N'net5', N'net', N'network', N'std')
GO
INSERT [dbo].[usr] ([username], [pass], [dep], [per]) VALUES (N'net6', N'net', N'network', N'std')
GO
INSERT [dbo].[usr] ([username], [pass], [dep], [per]) VALUES (N'op', N'098', N'database', N'std')
GO
INSERT [dbo].[usr] ([username], [pass], [dep], [per]) VALUES (N'pl', N'098', N'database', N'tch')
GO
INSERT [dbo].[usr] ([username], [pass], [dep], [per]) VALUES (N'sham', N'sham', N'database', N'tch')
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__std__2F3684F5362A4087]    Script Date: 6/15/2020 8:03:38 PM ******/
ALTER TABLE [dbo].[std] ADD UNIQUE NONCLUSTERED 
(
	[s_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__tch__3213E83E429C9F22]    Script Date: 6/15/2020 8:03:38 PM ******/
ALTER TABLE [dbo].[tch] ADD UNIQUE NONCLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[attend]  WITH CHECK ADD FOREIGN KEY([s_id])
REFERENCES [dbo].[usr] ([username])
GO
ALTER TABLE [dbo].[deg]  WITH CHECK ADD  CONSTRAINT [FK__deg__id__1BC821DD] FOREIGN KEY([id])
REFERENCES [dbo].[usr] ([username])
GO
ALTER TABLE [dbo].[deg] CHECK CONSTRAINT [FK__deg__id__1BC821DD]
GO
ALTER TABLE [dbo].[deg]  WITH CHECK ADD  CONSTRAINT [FK__deg__sub__1CBC4616] FOREIGN KEY([sub])
REFERENCES [dbo].[sub] ([sub_id])
GO
ALTER TABLE [dbo].[deg] CHECK CONSTRAINT [FK__deg__sub__1CBC4616]
GO
ALTER TABLE [dbo].[email]  WITH CHECK ADD FOREIGN KEY([id])
REFERENCES [dbo].[usr] ([username])
GO
ALTER TABLE [dbo].[fil]  WITH CHECK ADD FOREIGN KEY([send])
REFERENCES [dbo].[usr] ([username])
GO
ALTER TABLE [dbo].[phone]  WITH CHECK ADD FOREIGN KEY([id])
REFERENCES [dbo].[usr] ([username])
GO
ALTER TABLE [dbo].[std]  WITH CHECK ADD FOREIGN KEY([s_id])
REFERENCES [dbo].[usr] ([username])
GO
ALTER TABLE [dbo].[t_sub]  WITH CHECK ADD  CONSTRAINT [FK__t_sub__sub_id__1F98B2C1] FOREIGN KEY([sub_id])
REFERENCES [dbo].[sub] ([sub_id])
GO
ALTER TABLE [dbo].[t_sub] CHECK CONSTRAINT [FK__t_sub__sub_id__1F98B2C1]
GO
ALTER TABLE [dbo].[t_sub]  WITH CHECK ADD  CONSTRAINT [FK__t_sub__t_id__1EA48E88] FOREIGN KEY([t_id])
REFERENCES [dbo].[usr] ([username])
GO
ALTER TABLE [dbo].[t_sub] CHECK CONSTRAINT [FK__t_sub__t_id__1EA48E88]
GO
ALTER TABLE [dbo].[tch]  WITH CHECK ADD FOREIGN KEY([id])
REFERENCES [dbo].[usr] ([username])
GO
