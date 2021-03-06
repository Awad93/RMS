USE [RMS_DB]
GO
/****** Object:  Table [dbo].[Patent_Applied_Author]    Script Date: 7/21/2016 12:26:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Patent_Applied_Author](
	[Patent_Applied_Author_ID] [int] IDENTITY(1,1) NOT NULL,
	[Patent_Applied_ID] [int] NOT NULL,
	[KFUPMID] [float] NOT NULL,
	[Role] [nvarchar](255) NULL,
	[Remarks] [nvarchar](255) NULL,
	[CreatedOn] [datetime] NOT NULL DEFAULT (getdate()),
	[CreatedBy] [nvarchar](255) NOT NULL,
	[UpdatedOn] [datetime] NULL,
	[UpdatedBy] [nvarchar](255) NULL,
	[Active_flag] [bit] NOT NULL DEFAULT ((1)),
	[Deleted_flag] [bit] NOT NULL DEFAULT ((0)),
 CONSTRAINT [PK_Patents_Applied_Persons] PRIMARY KEY CLUSTERED 
(
	[Patent_Applied_Author_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Patent_Applied_Author] ON 

INSERT [dbo].[Patent_Applied_Author] ([Patent_Applied_Author_ID], [Patent_Applied_ID], [KFUPMID], [Role], [Remarks], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [Active_flag], [Deleted_flag]) VALUES (1, 1, 7158585, NULL, NULL, CAST(N'2016-06-27 15:02:28.363' AS DateTime), N'imran', CAST(N'2016-06-27 15:02:33.563' AS DateTime), N'imran', 1, 0)
INSERT [dbo].[Patent_Applied_Author] ([Patent_Applied_Author_ID], [Patent_Applied_ID], [KFUPMID], [Role], [Remarks], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [Active_flag], [Deleted_flag]) VALUES (2, 2, 7158585, NULL, NULL, CAST(N'2016-06-27 15:02:28.363' AS DateTime), N'imran', CAST(N'2016-06-27 15:02:33.563' AS DateTime), N'imran', 1, 0)
INSERT [dbo].[Patent_Applied_Author] ([Patent_Applied_Author_ID], [Patent_Applied_ID], [KFUPMID], [Role], [Remarks], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [Active_flag], [Deleted_flag]) VALUES (3, 3, 7158585, NULL, NULL, CAST(N'2016-06-27 15:02:28.363' AS DateTime), N'imran', CAST(N'2016-06-27 15:02:33.563' AS DateTime), N'imran', 1, 0)
INSERT [dbo].[Patent_Applied_Author] ([Patent_Applied_Author_ID], [Patent_Applied_ID], [KFUPMID], [Role], [Remarks], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [Active_flag], [Deleted_flag]) VALUES (4, 4, 7158585, NULL, NULL, CAST(N'2016-06-27 15:02:28.363' AS DateTime), N'imran', CAST(N'2016-06-27 15:02:33.563' AS DateTime), N'imran', 1, 0)
INSERT [dbo].[Patent_Applied_Author] ([Patent_Applied_Author_ID], [Patent_Applied_ID], [KFUPMID], [Role], [Remarks], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [Active_flag], [Deleted_flag]) VALUES (5, 5, 7158585, NULL, NULL, CAST(N'2016-06-27 15:02:28.363' AS DateTime), N'imran', CAST(N'2016-06-27 15:02:33.563' AS DateTime), N'imran', 1, 0)
INSERT [dbo].[Patent_Applied_Author] ([Patent_Applied_Author_ID], [Patent_Applied_ID], [KFUPMID], [Role], [Remarks], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [Active_flag], [Deleted_flag]) VALUES (6, 6, 7158585, NULL, NULL, CAST(N'2016-06-27 15:02:28.363' AS DateTime), N'imran', CAST(N'2016-06-27 15:02:33.563' AS DateTime), N'imran', 1, 0)
INSERT [dbo].[Patent_Applied_Author] ([Patent_Applied_Author_ID], [Patent_Applied_ID], [KFUPMID], [Role], [Remarks], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [Active_flag], [Deleted_flag]) VALUES (7, 7, 7158585, NULL, NULL, CAST(N'2016-06-27 15:02:28.363' AS DateTime), N'imran', CAST(N'2016-06-27 15:02:33.563' AS DateTime), N'imran', 1, 0)
INSERT [dbo].[Patent_Applied_Author] ([Patent_Applied_Author_ID], [Patent_Applied_ID], [KFUPMID], [Role], [Remarks], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [Active_flag], [Deleted_flag]) VALUES (8, 8, 7158585, NULL, NULL, CAST(N'2016-06-27 15:02:28.363' AS DateTime), N'imran', CAST(N'2016-06-27 15:02:33.563' AS DateTime), N'imran', 1, 0)
INSERT [dbo].[Patent_Applied_Author] ([Patent_Applied_Author_ID], [Patent_Applied_ID], [KFUPMID], [Role], [Remarks], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [Active_flag], [Deleted_flag]) VALUES (9, 9, 7158585, NULL, NULL, CAST(N'2016-06-27 15:02:28.363' AS DateTime), N'imran', CAST(N'2016-06-27 15:02:33.563' AS DateTime), N'imran', 1, 0)
INSERT [dbo].[Patent_Applied_Author] ([Patent_Applied_Author_ID], [Patent_Applied_ID], [KFUPMID], [Role], [Remarks], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [Active_flag], [Deleted_flag]) VALUES (10, 10, 7158585, NULL, NULL, CAST(N'2016-06-27 15:02:28.363' AS DateTime), N'imran', CAST(N'2016-06-27 15:02:33.563' AS DateTime), N'imran', 1, 0)
INSERT [dbo].[Patent_Applied_Author] ([Patent_Applied_Author_ID], [Patent_Applied_ID], [KFUPMID], [Role], [Remarks], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [Active_flag], [Deleted_flag]) VALUES (11, 11, 7158585, NULL, NULL, CAST(N'2016-06-27 15:02:28.363' AS DateTime), N'imran', CAST(N'2016-06-27 15:02:33.563' AS DateTime), N'imran', 1, 0)
INSERT [dbo].[Patent_Applied_Author] ([Patent_Applied_Author_ID], [Patent_Applied_ID], [KFUPMID], [Role], [Remarks], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [Active_flag], [Deleted_flag]) VALUES (12, 12, 7158585, NULL, NULL, CAST(N'2016-06-27 15:02:28.363' AS DateTime), N'imran', CAST(N'2016-06-27 15:02:33.563' AS DateTime), N'imran', 1, 0)
INSERT [dbo].[Patent_Applied_Author] ([Patent_Applied_Author_ID], [Patent_Applied_ID], [KFUPMID], [Role], [Remarks], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [Active_flag], [Deleted_flag]) VALUES (13, 13, 7158585, NULL, NULL, CAST(N'2016-06-27 15:02:28.363' AS DateTime), N'imran', CAST(N'2016-06-27 15:02:33.563' AS DateTime), N'imran', 1, 0)
INSERT [dbo].[Patent_Applied_Author] ([Patent_Applied_Author_ID], [Patent_Applied_ID], [KFUPMID], [Role], [Remarks], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [Active_flag], [Deleted_flag]) VALUES (14, 14, 7158585, NULL, NULL, CAST(N'2016-06-27 15:02:28.363' AS DateTime), N'imran', CAST(N'2016-06-27 15:02:33.563' AS DateTime), N'imran', 1, 0)
INSERT [dbo].[Patent_Applied_Author] ([Patent_Applied_Author_ID], [Patent_Applied_ID], [KFUPMID], [Role], [Remarks], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [Active_flag], [Deleted_flag]) VALUES (15, 15, 7158585, NULL, NULL, CAST(N'2016-06-27 15:02:28.363' AS DateTime), N'imran', CAST(N'2016-06-27 15:02:33.563' AS DateTime), N'imran', 1, 0)
INSERT [dbo].[Patent_Applied_Author] ([Patent_Applied_Author_ID], [Patent_Applied_ID], [KFUPMID], [Role], [Remarks], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [Active_flag], [Deleted_flag]) VALUES (16, 16, 7158585, NULL, NULL, CAST(N'2016-06-27 15:02:28.363' AS DateTime), N'imran', CAST(N'2016-06-27 15:02:33.563' AS DateTime), N'imran', 1, 0)
INSERT [dbo].[Patent_Applied_Author] ([Patent_Applied_Author_ID], [Patent_Applied_ID], [KFUPMID], [Role], [Remarks], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [Active_flag], [Deleted_flag]) VALUES (17, 17, 7158585, NULL, NULL, CAST(N'2016-06-27 15:02:28.363' AS DateTime), N'imran', CAST(N'2016-06-27 15:02:33.563' AS DateTime), N'imran', 1, 0)
INSERT [dbo].[Patent_Applied_Author] ([Patent_Applied_Author_ID], [Patent_Applied_ID], [KFUPMID], [Role], [Remarks], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [Active_flag], [Deleted_flag]) VALUES (18, 18, 7158585, NULL, NULL, CAST(N'2016-06-27 15:02:28.363' AS DateTime), N'imran', CAST(N'2016-06-27 15:02:33.563' AS DateTime), N'imran', 1, 0)
INSERT [dbo].[Patent_Applied_Author] ([Patent_Applied_Author_ID], [Patent_Applied_ID], [KFUPMID], [Role], [Remarks], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [Active_flag], [Deleted_flag]) VALUES (19, 19, 7158585, NULL, NULL, CAST(N'2016-06-27 15:02:28.363' AS DateTime), N'imran', CAST(N'2016-06-27 15:02:33.563' AS DateTime), N'imran', 1, 0)
INSERT [dbo].[Patent_Applied_Author] ([Patent_Applied_Author_ID], [Patent_Applied_ID], [KFUPMID], [Role], [Remarks], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [Active_flag], [Deleted_flag]) VALUES (20, 20, 7158585, NULL, NULL, CAST(N'2016-06-27 15:02:28.363' AS DateTime), N'imran', CAST(N'2016-06-27 15:02:33.563' AS DateTime), N'imran', 1, 0)
INSERT [dbo].[Patent_Applied_Author] ([Patent_Applied_Author_ID], [Patent_Applied_ID], [KFUPMID], [Role], [Remarks], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [Active_flag], [Deleted_flag]) VALUES (21, 21, 7158585, NULL, NULL, CAST(N'2016-06-27 15:02:28.363' AS DateTime), N'imran', CAST(N'2016-06-27 15:02:33.563' AS DateTime), N'imran', 1, 0)
INSERT [dbo].[Patent_Applied_Author] ([Patent_Applied_Author_ID], [Patent_Applied_ID], [KFUPMID], [Role], [Remarks], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [Active_flag], [Deleted_flag]) VALUES (22, 22, 7158585, NULL, NULL, CAST(N'2016-06-27 15:02:28.363' AS DateTime), N'imran', CAST(N'2016-06-27 15:02:33.563' AS DateTime), N'imran', 1, 0)
INSERT [dbo].[Patent_Applied_Author] ([Patent_Applied_Author_ID], [Patent_Applied_ID], [KFUPMID], [Role], [Remarks], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [Active_flag], [Deleted_flag]) VALUES (23, 23, 7158585, NULL, NULL, CAST(N'2016-06-27 15:02:28.363' AS DateTime), N'imran', CAST(N'2016-06-27 15:02:33.563' AS DateTime), N'imran', 1, 0)
SET IDENTITY_INSERT [dbo].[Patent_Applied_Author] OFF
