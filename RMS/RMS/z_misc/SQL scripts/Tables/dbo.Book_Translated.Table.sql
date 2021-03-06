USE [RMS_DB]
GO
/****** Object:  Table [dbo].[Book_Translated]    Script Date: 7/21/2016 12:26:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Book_Translated](
	[Book_Translated_ID] [int] IDENTITY(1,1) NOT NULL,
	[Book_Title] [nvarchar](1000) NOT NULL,
	[Publication_Year] [int] NULL,
	[Publisher] [nvarchar](1000) NULL,
	[Country] [nvarchar](1000) NULL,
	[Original_Title] [nvarchar](1000) NULL,
	[Original_Authors] [nvarchar](1000) NULL,
	[Remarks] [nvarchar](1000) NULL,
	[CreatedOn] [datetime] NOT NULL DEFAULT (getdate()),
	[CreatedBy] [nvarchar](255) NOT NULL,
	[UpdatedOn] [datetime] NULL,
	[UpdatedBy] [nvarchar](255) NULL,
	[Active_flag] [bit] NOT NULL DEFAULT ((1)),
	[Deleted_flag] [bit] NOT NULL DEFAULT ((0)),
 CONSTRAINT [PK_Book_Translated] PRIMARY KEY CLUSTERED 
(
	[Book_Translated_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Book_Translated] ON 

INSERT [dbo].[Book_Translated] ([Book_Translated_ID], [Book_Title], [Publication_Year], [Publisher], [Country], [Original_Title], [Original_Authors], [Remarks], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [Active_flag], [Deleted_flag]) VALUES (1, N'التحليل الدالي ', 2010, N'شركة العبيكان', N'السعودية', N'', N'Haim Brezis', N'', CAST(N'2016-06-27 15:02:28.410' AS DateTime), N'imran', CAST(N'2016-06-27 15:02:33.593' AS DateTime), N'imran', 1, 0)
INSERT [dbo].[Book_Translated] ([Book_Translated_ID], [Book_Title], [Publication_Year], [Publisher], [Country], [Original_Title], [Original_Authors], [Remarks], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [Active_flag], [Deleted_flag]) VALUES (2, N'شبكات الحاسب والإنترنت ', 2010, N'شركة العبيكان', N'السعودية', N'', N'James F. Kurose', N'', CAST(N'2016-06-27 15:02:28.410' AS DateTime), N'imran', CAST(N'2016-06-27 15:02:33.593' AS DateTime), N'imran', 1, 0)
INSERT [dbo].[Book_Translated] ([Book_Translated_ID], [Book_Title], [Publication_Year], [Publisher], [Country], [Original_Title], [Original_Authors], [Remarks], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [Active_flag], [Deleted_flag]) VALUES (3, N'أساسيات أمن الشبكات', 2011, N'شركة العبيكان', N'السعودية', N'', N'William Stallings', N'', CAST(N'2016-06-27 15:02:28.410' AS DateTime), N'imran', CAST(N'2016-06-27 15:02:33.593' AS DateTime), N'imran', 1, 0)
INSERT [dbo].[Book_Translated] ([Book_Translated_ID], [Book_Title], [Publication_Year], [Publisher], [Country], [Original_Title], [Original_Authors], [Remarks], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [Active_flag], [Deleted_flag]) VALUES (4, N'مدخل لأخلاقيات مهنة الهندسة ', 2012, N'شركة العبيكان', N'السعودية', N'', N'R. Schinger & N. Martin', N'', CAST(N'2016-06-27 15:02:28.410' AS DateTime), N'imran', CAST(N'2016-06-27 15:02:33.593' AS DateTime), N'imran', 1, 0)
INSERT [dbo].[Book_Translated] ([Book_Translated_ID], [Book_Title], [Publication_Year], [Publisher], [Country], [Original_Title], [Original_Authors], [Remarks], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [Active_flag], [Deleted_flag]) VALUES (5, N'المدخل إلى الحماية الإشعاعية ', 2013, N'شركة العبيكان', N'السعودية', N'', N'A. Martin & S. Harbison', N'', CAST(N'2016-06-27 15:02:28.410' AS DateTime), N'imran', CAST(N'2016-06-27 15:02:33.593' AS DateTime), N'imran', 1, 0)
SET IDENTITY_INSERT [dbo].[Book_Translated] OFF
