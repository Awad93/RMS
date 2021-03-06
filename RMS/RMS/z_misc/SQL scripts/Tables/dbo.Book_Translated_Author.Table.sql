USE [RMS_DB]
GO
/****** Object:  Table [dbo].[Book_Translated_Author]    Script Date: 7/21/2016 12:26:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Book_Translated_Author](
	[Book_Translated_Author_ID] [int] IDENTITY(1,1) NOT NULL,
	[Book_Translated_ID] [int] NOT NULL,
	[KFUPMID] [float] NOT NULL,
	[Remarks] [nvarchar](1000) NULL,
	[CreatedOn] [datetime] NOT NULL DEFAULT (getdate()),
	[CreatedBy] [nvarchar](255) NOT NULL,
	[UpdatedOn] [datetime] NULL,
	[UpdatedBy] [nvarchar](255) NULL,
	[Active_flag] [bit] NOT NULL DEFAULT ((1)),
	[Deleted_flag] [bit] NOT NULL DEFAULT ((0)),
 CONSTRAINT [PK_Book_Translated_Author] PRIMARY KEY CLUSTERED 
(
	[Book_Translated_Author_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Book_Translated_Author] ON 

INSERT [dbo].[Book_Translated_Author] ([Book_Translated_Author_ID], [Book_Translated_ID], [KFUPMID], [Remarks], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [Active_flag], [Deleted_flag]) VALUES (1, 1, 6970968, N'', CAST(N'2016-06-27 15:02:28.317' AS DateTime), N'imran', CAST(N'2016-06-27 15:02:33.520' AS DateTime), N'imran', 1, 0)
INSERT [dbo].[Book_Translated_Author] ([Book_Translated_Author_ID], [Book_Translated_ID], [KFUPMID], [Remarks], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [Active_flag], [Deleted_flag]) VALUES (2, 2, 7040124, N'', CAST(N'2016-06-27 15:02:28.317' AS DateTime), N'imran', CAST(N'2016-06-27 15:02:33.520' AS DateTime), N'imran', 1, 0)
INSERT [dbo].[Book_Translated_Author] ([Book_Translated_Author_ID], [Book_Translated_ID], [KFUPMID], [Remarks], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [Active_flag], [Deleted_flag]) VALUES (3, 3, 7040124, N'', CAST(N'2016-06-27 15:02:28.317' AS DateTime), N'imran', CAST(N'2016-06-27 15:02:33.520' AS DateTime), N'imran', 1, 0)
INSERT [dbo].[Book_Translated_Author] ([Book_Translated_Author_ID], [Book_Translated_ID], [KFUPMID], [Remarks], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [Active_flag], [Deleted_flag]) VALUES (4, 4, 6880969, N'', CAST(N'2016-06-27 15:02:28.317' AS DateTime), N'imran', CAST(N'2016-06-27 15:02:33.520' AS DateTime), N'imran', 1, 0)
INSERT [dbo].[Book_Translated_Author] ([Book_Translated_Author_ID], [Book_Translated_ID], [KFUPMID], [Remarks], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [Active_flag], [Deleted_flag]) VALUES (5, 5, 1780445, N'', CAST(N'2016-06-27 15:02:28.317' AS DateTime), N'imran', CAST(N'2016-06-27 15:02:33.520' AS DateTime), N'imran', 1, 0)
SET IDENTITY_INSERT [dbo].[Book_Translated_Author] OFF
ALTER TABLE [dbo].[Book_Translated_Author]  WITH CHECK ADD  CONSTRAINT [FK_Book_Translated_Author_Book_Translated] FOREIGN KEY([Book_Translated_ID])
REFERENCES [dbo].[Book_Translated] ([Book_Translated_ID])
GO
ALTER TABLE [dbo].[Book_Translated_Author] CHECK CONSTRAINT [FK_Book_Translated_Author_Book_Translated]
GO
ALTER TABLE [dbo].[Book_Translated_Author]  WITH CHECK ADD  CONSTRAINT [FK_Book_Translated_Author_Researcher] FOREIGN KEY([KFUPMID])
REFERENCES [dbo].[Researcher] ([KFUPMID])
GO
ALTER TABLE [dbo].[Book_Translated_Author] CHECK CONSTRAINT [FK_Book_Translated_Author_Researcher]
GO
