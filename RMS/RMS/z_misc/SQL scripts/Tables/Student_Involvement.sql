USE [RMS_DB]
GO

CREATE TABLE [dbo].[Student_Involvement](
	[Student_Involvement_ID] [int] IDENTITY(1,1) NOT NULL,
	[Student_ID] [nvarchar](255) NULL,
	[Student_Name] [nvarchar](255) NULL,
	[WOS_Number] [varchar](255) NULL,
	[Dept_Code] [varchar](255) NULL,
	[is_First_Author] [bit] NULL,
 CONSTRAINT [PK__Sheet1__B63181EF3C54FC20] PRIMARY KEY CLUSTERED 
(
	[Student_Involvement_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO



SET IDENTITY_INSERT [dbo].[Student_Involvement] ON 

GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (1, NULL, N'Abugurain, A', N'WOS:000186828000041', N'EE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (2, NULL, N'Shakil, M.', N'WOS:000267312000007', N'SE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (3, NULL, N'Jimoh, Abiola Azeez', N'WOS:000359208500001', N'CENT', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (4, NULL, N'Jimoh, Abiola Azeez', N'WOS:000360650900076', N'CENT', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (5, NULL, N'Jillani, Shehzada Muhammad Sajid', N'WOS:000370096800002', N'CHEM', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (6, NULL, N'Al-Ameri, Wahbi Abdulqader', N'CCC:000373706300007', N'PETE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (7, NULL, N'Husain, T', N'WOS:000073298300004', N'CE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (8, NULL, N'Al-Tawfiq, AM', N'WOS:000073779400005', N'CHEM', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (9, NULL, N'Salim, M', N'WOS:000081102000038', N'PHYS', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (10, NULL, N'Waheed, A', N'WOS:000083257300046', N'CHEM', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (11, NULL, N'Hassan, A', N'WOS:000088520000002', NULL, 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (12, NULL, N'Saleem, M', N'WOS:000088872500005', N'CE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (13, NULL, N'Saleem, M', N'WOS:000168219800002', N'CE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (14, NULL, N'Shirokoff, J', N'WOS:000172670100006', N'CHEM', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (15, NULL, N'Moied, K', N'WOS:000188783300004', N'CE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (16, NULL, N'AlSharaa, Abdulnaser', N'WOS:000208189300646', N'CHEM', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (17, NULL, N'Saleem, M', N'WOS:000220261700008', N'CE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (18, NULL, N'Bentrcia, Abdulwahab', N'WOS:000242980300016', N'EE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (19, NULL, N'Khan, K.', N'WOS:000243862600009', N'CPM', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (20, NULL, N'Iqbal, Imran', N'WOS:000243984000034', N'CE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (21, NULL, N'Bentrcia, Abdelouahab', N'WOS:000244232700017', N'EE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (22, NULL, N'Islam, Mohammad Ashraful', N'WOS:000244379900032', N'CHE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (23, NULL, N'Ahsan, M.', N'WOS:000244939300004', N'ME', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (24, NULL, N'Khan, Mehmood', N'WOS:000244954700015', N'SE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (25, NULL, N'Al-Haddad, M. N.', N'WOS:000245576600004', N'PHYS', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (26, NULL, N'Ahsan, M.', N'WOS:000246092900059', N'ME', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (27, NULL, N'Kabir, Suara', N'WOS:000246195300004', N'ME', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (28, NULL, N'Khan, Salman A.', N'WOS:000246595100015', N'ICS', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (29, NULL, N'Elhadidy, M. A.', N'WOS:000246790900031', N'ICS', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (30, NULL, N'Jamal, A.', N'WOS:000247331700032', N'ARCH', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (31, NULL, N'Bentrcia, A.', N'WOS:000247385500005', N'EE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (32, NULL, N'Al-Jaroudi, Said S.', N'WOS:000247415100001', N'CHE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (33, NULL, N'Al-Dhukair, A.', N'WOS:000247479600162', NULL, 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (34, NULL, N'Badr, H. A.', N'WOS:000247713200004', N'ME', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (35, NULL, N'Elhadidy, M. A.', N'WOS:000248262100009', N'ICS', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (36, NULL, N'Tijani, Jimoh', N'WOS:000248382700022', N'CHEM', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (37, NULL, N'Abubakar, Ismaila', N'WOS:000248977000005', N'CRP', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (38, NULL, N'Jamal, Ahmad', N'WOS:000249282500001', N'ME', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (39, NULL, N'Noman, S. M.', N'WOS:000250258400010', N'SE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (40, NULL, N'Sayeed, M. N.', N'WOS:000250367100048', N'CHEM', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (41, NULL, N'Ahsan, M.', N'WOS:000250452300001', N'ME', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (42, NULL, N'Abdalla, Khalid', N'WOS:000250841300012', N'PHYS', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (43, NULL, N'Alqurashi, Khaled Y.', N'WOS:000251419800006', N'EE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (44, NULL, N'Kabir, Suara', N'WOS:000251754300006', N'ME', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (45, NULL, N'Rabiu, S.', N'WOS:000251915600006', N'CHE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (46, NULL, N'Iman, Muhammad Z. N.', N'WOS:000252091800014', N'CHEM', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (47, NULL, N'Alqurashi, Khalled Y.', N'WOS:000252234000026', N'EE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (48, NULL, N'Olanrewaju, Moshood J.', N'WOS:000252315800006', N'CHE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (49, NULL, N'Sayeed, Mohammad N.', N'WOS:000252344000009', N'CHEM', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (50, NULL, N'Amr, E.', N'WOS:000252533400013', N'CHE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (51, NULL, N'Manda, A.', N'WOS:000252533400013', N'CHEM', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (52, NULL, N'Elhadidy, M. A.', N'WOS:000252736500009', N'ICS', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (53, NULL, N'Bentrcia, A.', N'WOS:000252956200001', N'EE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (54, NULL, N'Jamal, A.', N'WOS:000253205300004', N'ARCH', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (55, NULL, N'Bamuqabel, Bader', N'WOS:000253278300010', N'SE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (56, NULL, N'Cherid, A.', N'WOS:000255260000002', N'MATH', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (57, NULL, N'Elish, Karim O.', N'WOS:000255295900005', N'ICS', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (58, NULL, N'Iman, Muhammad Z. N.', N'WOS:000255352300011', N'CHEM', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (59, NULL, N'Al-Kutti, Walid A.', N'WOS:000255473200003', N'CE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (60, NULL, N'Sayeed, M. N.', N'WOS:000256552800012', N'CHEM', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (61, NULL, N'Rabiu, S.', N'WOS:000256652500021', N'CHE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (62, NULL, N'Shafiq, Muhammad', N'WOS:000256907700027', N'SE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (63, NULL, N'Al-Kutti, Walid A.', N'WOS:000256947600003', N'CE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (64, NULL, N'Khan, Mehmood', N'WOS:000257103500018', N'SE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (65, NULL, N'Siddiqui, Atiq', N'WOS:000257103500018', N'SE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (66, NULL, N'Khan, Mehmood', N'WOS:000257343900007', N'SE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (67, NULL, N'Alsbaiee, Alaaeddin', N'WOS:000257500500005', N'CHEM', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (68, NULL, N'Iman, Muhammad Z. N.', N'WOS:000257573000002', N'CHEM', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (69, NULL, N'Arshed, G. M.', N'WOS:000257833700011', N'ME', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (70, NULL, N'Alvia, Aleem Khalid', N'WOS:000258079100003', N'ICS', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (71, NULL, N'Alghonaim, Esa', N'WOS:000258129400001', N'ICS', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (72, NULL, N'Ahsan, M.', N'WOS:000258566600011', N'ME', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (73, NULL, N'Abdalla, Khalid', N'WOS:000258953700103', N'PHYS', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (74, NULL, N'Al-Ghamdi, H.', N'WOS:000258953700109', N'PHYS', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (75, NULL, N'Bello, M.', N'WOS:000259014400028', N'CHE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (76, NULL, N'Ahsan, M.', N'WOS:000259133700006', N'ME', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (77, NULL, N'Abubakar, Ismaila', N'WOS:000259423300008', N'CRP', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (78, NULL, N'Tijani, Jimoh', N'WOS:000259780600001', N'CHEM', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (79, NULL, N'Al-Sunaidi, Z. H. A.', N'WOS:000260090500002', N'CHEM', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (80, NULL, N'Iman, Muhammad Z. N.', N'WOS:000260130600004', N'CHEM', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (81, NULL, N'Al-Maghrabi, M. A.', N'WOS:000260156200031', N'MATH', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (82, NULL, N'Rabiu, Sule', N'WOS:000260536800008', N'CHE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (83, NULL, N'Al-Abbad, S. A.', N'WOS:000261249100061', N'CHEM', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (84, NULL, N'Al-Sunaidi, Z. H. A.', N'WOS:000261249100061', N'CHEM', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (85, NULL, N'Hameed, Mohammed Abdul', N'WOS:000261420800011', N'CE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (86, NULL, N'Shaik, A. Qaiyum', N'WOS:000261420800018', N'ME', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (87, NULL, N'Seliaman, M. E.', N'WOS:000261686800005', N'OPQ', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (88, NULL, N'Hughes, Geraint Wyn ap Gwilym', N'WOS:000262877800001', NULL, 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (89, NULL, N'Qahtan, A.', N'WOS:000263013800021', N'ICS', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (90, NULL, N'Iman, Muhammad Z. N.', N'WOS:000263106900024', N'CHEM', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (91, NULL, N'Arafeh, Khaled M.', N'WOS:000263218700005', N'ICS', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (92, NULL, N'Abu Olba, Maen Abdullatif', N'WOS:000263468400009', N'CE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (93, NULL, N'Bentrcia, A.', N'WOS:000263547400001', N'EE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (94, NULL, N'Bentrcia, A.', N'WOS:000263547400003', N'EE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (95, NULL, N'Sayeed, Mohammad N.', N'WOS:000263715900010', N'CHEM', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (96, NULL, N'Moosa, Basem A.', N'WOS:000263883700005', N'CHEM', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (97, NULL, N'Al-Maghrabi, M. A.', N'WOS:000264017500016', N'MATH', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (98, NULL, N'Ali, M. I.', N'WOS:000264048800001', NULL, 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (99, NULL, N'Alhajiri, F. S.', N'WOS:000264111800062', N'EE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (100, NULL, N'Rabiu, S.', N'WOS:000264221600012', N'CHE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (101, NULL, N'Shaik, A. Qaiyum', N'WOS:000264305000009', N'ME', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (102, NULL, N'Elhadidy, M. A.', N'WOS:000264739200004', N'ICS', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (103, NULL, N'Ali, Mustafa I.', N'WOS:000264754100003', N'ICS', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (104, NULL, N'Awaidah, Sameh M.', N'WOS:000264941900022', N'ICS', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (105, NULL, N'Al-Ugla, Ali A.', N'WOS:000265164200005', N'ME', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (106, NULL, N'AlSbaiee, Alaaeddin', N'WOS:000265191300009', N'CHEM', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (107, NULL, N'Seliaman, M. E.', N'WOS:000265989800004', N'OPQ', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (108, NULL, N'Nazeeruddin, Mohammad', N'WOS:000266173900018', N'ICS', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (109, NULL, N'Aridi, Toufic N.', N'WOS:000266181800021', N'CoREPRP', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (110, NULL, N'Ahmed, Adeeb', N'WOS:000266229500008', N'CHEM', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (111, NULL, N'Maarouf, I.', N'WOS:000266275800016', N'ICS', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (112, NULL, N'Khan, Masihullah J.', N'WOS:000266308100002', N'CHE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (113, NULL, N'Abbasi, Sarfraz H.', N'WOS:000266308100002', N'CHE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (114, NULL, N'Quadeer, A. A.', N'WOS:000266314300001', N'EE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (115, NULL, N'Yasawy, Mohamed Ismail', N'WOS:000266326900019', NULL, 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (116, NULL, N'Kandlawala, M. F.', N'WOS:000267312000009', NULL, 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (117, NULL, N'Khurshid, Muneeb', N'WOS:000267676000012', N'CoREPRP', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (118, NULL, N'El Morra, H. H.', N'WOS:000268081700015', N'EE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (119, NULL, N'Abbasi, Ameer Ahmed', N'WOS:000268086400011', N'ICS', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (120, NULL, N'Hamawi, M.', N'WOS:000268516100010', N'ICS', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (121, NULL, N'Ahsan, M.', N'WOS:000268609800001', N'ME', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (122, NULL, N'Arafeh, Khaled M.', N'WOS:000268617700009', N'ICS', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (123, NULL, N'Mohiuddin, Mohammad Masalehuddin', N'WOS:000268941800010', N'CER', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (124, NULL, N'Mayoof, Fathi N.', N'WOS:000268987400068', NULL, 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (125, NULL, N'Masihullah, Jabarullah K.', N'WOS:000269437200001', N'CHE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (126, NULL, N'Abbasi, Sarfraz H.', N'WOS:000269437200001', N'CHE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (127, NULL, N'Bentrcia, Abdelouhab', N'WOS:000269554900008', N'EE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (128, NULL, N'Bentrcia, Abdelouahab', N'WOS:000269571000002', N'EE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (129, NULL, N'Al-Mojel, Sultan A.', N'WOS:000269711300037', N'ME', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (130, NULL, N'Moosa, Basem A.', N'WOS:000270121400023', N'CHEM', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (131, NULL, N'Al-Kutti, Walid A.', N'WOS:000270320200008', N'CE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (132, NULL, N'Ahsan, M.', N'WOS:000270450100008', N'ME', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (133, NULL, N'Al Kafi, M. A.', N'WOS:000270641500018', N'PHYS', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (134, NULL, N'Baig, Hasan', N'WOS:000270644700030', N'ME', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (135, NULL, N'El Morra, H. H.', N'WOS:000270765100004', N'EE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (136, NULL, N'Khurshid, Muneeb', N'WOS:000271343200009', N'CoREPRP', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (137, NULL, N'Kahtani, A.', N'WOS:000271532500002', N'ICS', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (138, NULL, N'Alsbaiee, Alaaeddin', N'WOS:000271775100005', N'CHEM', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (139, NULL, N'Ismail, A.', N'WOS:000271794000004', N'PHYS', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (140, NULL, N'Kahtani, A.', N'WOS:000271876200007', N'ICS', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (141, NULL, N'Manaa, A.', N'WOS:000272186000007', N'ICS', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (142, NULL, N'Hussain, Maaruf', N'WOS:000273122200003', N'ES', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (143, NULL, N'Tijani, Jimoh', N'WOS:000273413600007', N'CHEM', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (144, NULL, N'Nazeeruddin, Mohammad', N'WOS:000273565700013', N'ICS', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (145, NULL, N'Fasiuddin, M.', N'WOS:000273635200001', N'ARCH', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (146, NULL, N'Awaida, Sameh M.', N'WOS:000273653600011', N'ICS', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (147, NULL, N'Odedairo, T.', N'WOS:000274342500024', N'CoREPRP', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (148, NULL, N'Shaaban, Y.', N'WOS:000274358500002', N'ICS', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (149, NULL, N'Hughes, G. Wyn ap Gwilym', N'WOS:000274720600002', NULL, 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (150, NULL, N'Odedairo, T.', N'WOS:000274772100026', N'CoREPRP', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (151, NULL, N'Maarouf, Ismat', N'WOS:000274919200001', N'ICS', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (152, NULL, N'Baig, Hasan', N'WOS:000275146100019', N'CoRERE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (153, NULL, N'Shafiq, Muhammad', N'WOS:000276129200001', N'SE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (154, NULL, N'Abdalla, Khalid', N'WOS:000276418600059', N'PHYS', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (155, NULL, N'Elshahat, B.', N'WOS:000276418600059', N'PHYS', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (156, NULL, N'Alhaffar, Mouheddin', N'WOS:000276785000022', N'CHEM', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (157, NULL, N'Alanizi, K.', N'WOS:000277184800002', N'EE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (158, NULL, N'Alhulwah, G.', N'WOS:000277184800002', N'EE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (159, NULL, N'Basorrah, M.', N'WOS:000277184800002', N'EE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (160, NULL, N'Yusof, Faridah', N'WOS:000277486700006', N'CHEM', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (161, NULL, N'Al-Amri, Fahad G.', N'WOS:000278086400005', N'ME', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (162, NULL, N'Suleiman, Mohammed A.', N'WOS:000278319300023', N'CHE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (163, NULL, N'AlSbaiee, Alaaeddin', N'WOS:000278636900003', N'CHEM', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (164, NULL, N'Abdulkadir, I. T.', N'WOS:000279124400005', N'ES', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (165, NULL, N'Khan, Khaqan', N'WOS:000279650900006', N'CPM', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (166, NULL, N'Al-Jaroudi, Said S.', N'WOS:000280207400018', N'CHE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (167, NULL, N'Alvi, Aleem K.', N'WOS:000280694000006', N'ICS', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (168, NULL, N'Awaideh, Sameh M.', N'WOS:000280694000006', N'ICS', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (169, NULL, N'Alminshawy, B. J.', N'WOS:000280826600003', N'MATH', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (170, NULL, N'Manaa, A.', N'WOS:000281048100013', N'ICS', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (171, NULL, N'Moosa, Basem A.', N'WOS:000281074200008', N'CHEM', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (172, NULL, N'Odedairo, T.', N'WOS:000281991000004', N'CoREPRP', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (173, NULL, N'Abdul-Lateef, Adedigba A.', N'WOS:000282069300006', N'CoRERE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (174, NULL, N'Imam, Syed Ali Aamir', N'WOS:000282149600013', N'EE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (175, NULL, N'Al-Baiyat, A. K.', N'WOS:000282368300006', N'MATH', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (176, NULL, N'Moosa, Basem A.', N'WOS:000282480400012', N'CHEM', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (177, NULL, N'Siddique, T. A.', N'WOS:000282504600010', N'CER', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (178, NULL, N'Alqurashi, Khaled Y.', N'WOS:000283032300010', N'EE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (179, NULL, N'Odedairo, T.', N'WOS:000283584800021', N'CoREPRP', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (180, NULL, N'Abbasi, Ameer Ahmed', N'WOS:000283718100007', N'ICS', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (181, NULL, N'Abbasi, Sarfraz H.', N'WOS:000284176000034', N'0', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (182, NULL, N'Hamawi, M.', N'WOS:000285048600003', N'ICS', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (183, NULL, N'Hassan, Y.', N'WOS:000285048600003', N'ICS', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (184, NULL, N'Momin, O.', N'WOS:000285169500012', N'ME', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (185, NULL, N'Atanda, Luqman A.', N'WOS:000285856800030', N'CoREPRP', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (186, NULL, N'Momin, O.', N'WOS:000287226000026', N'ME', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (187, NULL, N'Odedairo, T.', N'WOS:000287996100023', N'CoREPRP', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (188, NULL, N'Odedairo, T.', N'WOS:000288061600011', N'CoREPRP', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (189, NULL, N'Ismail, A.', N'WOS:000288102300114', N'PHYS', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (190, NULL, N'Odedairo, T.', N'WOS:000288586100030', N'CoREPRP', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (191, NULL, N'Al-Ees, Osama', N'WOS:000289103200008', N'EE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (192, NULL, N'Atanda, Luqman A.', N'WOS:000289702600014', N'CoREPRP', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (193, NULL, N'Khurshid, Muneeb', N'WOS:000289716300027', N'CoREPRP', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (194, NULL, N'Alnehmi, A. J.', N'WOS:000289898300007', N'CE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (195, NULL, N'Ahmed, Khaja W.', N'WOS:000290169600010', N'CoREPRP', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (196, NULL, N'Jamal, A.', N'WOS:000290569600004', N'ARCH', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (197, NULL, N'Ali, Mustafa I.', N'WOS:000290571500008', N'ICS', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (198, NULL, N'Khalid, Haris M.', N'WOS:000291035800028', N'SE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (199, NULL, N'Akram, Muhammad', N'WOS:000291035800028', N'SE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (200, NULL, N'Atanda, Luqman A.', N'WOS:000291118000014', N'CoREPRP', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (201, NULL, N'Nuhu, Abdulmumin A.', N'WOS:000291131900004', N'CHEM', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (202, NULL, N'Abbasi, Sarfraz H.', N'WOS:000292094700003', N'0', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (203, NULL, N'Momin, O.', N'WOS:000293115600013', N'ME', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (204, NULL, N'Girei, Salihu Adamu', N'WOS:000293259700026', N'CHE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (205, NULL, N'Amr, Issam Thaher', N'WOS:000293259700026', N'CHE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (206, NULL, N'Al Awjan, Hussain', N'WOS:000293312800003', N'ME', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (207, NULL, N'Al Ramadhan, Dawood', N'WOS:000293312800003', N'ME', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (208, NULL, N'Altuwaijri, Saleh', N'WOS:000293363000051', N'CHEM', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (209, NULL, N'Atanda, Luqman', N'WOS:000293664600074', N'CHE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (210, NULL, N'Hamid, M. M. Hassan', N'WOS:000293848100004', N'SE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (211, NULL, N'Tirmizi, Syed A.', N'WOS:000294259500005', N'ME', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (212, NULL, N'Hassan, Matasm M.', N'WOS:000294476200010', N'EE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (213, NULL, N'Odedairo, T.', N'WOS:000294526400003', N'CoREPRP', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (214, NULL, N'Rasheed, Zehasheem', N'WOS:000294564100008', N'0', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (215, NULL, N'Khan, Muhammad J.', N'WOS:000294772400038', N'CHE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (216, NULL, N'Abdulwahhab, Muhammad A.', N'WOS:000294800300002', N'MATH', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (217, NULL, N'Albukhitan, Saeed', N'WOS:000295489900004', N'ICS', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (218, NULL, N'Momin, O.', N'WOS:000295770100029', N'ME', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (219, NULL, N'Ahmed, Faizan', N'WOS:000295813800010', N'AE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (220, NULL, N'Hezam, M.', N'WOS:000295942000042', N'CENT', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (221, NULL, N'Abdel-Hady, Afaf', N'WOS:000295962200001', N'PHYS', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (222, NULL, N'Akond, Mohammad S.', N'WOS:000296703200003', N'EE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (223, NULL, N'Alhaffar, Mouheddin', N'WOS:000297169300009', N'CENT', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (224, NULL, N'Atanda, Luqman A.', N'WOS:000297234400014', N'CoREPRP', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (225, NULL, N'Khan, Muhammad J.', N'WOS:000297265700001', N'CHE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (226, NULL, N'Khan, Muhammad J.', N'WOS:000297352000111', N'CHE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (227, NULL, N'Elish, Karim O.', N'WOS:000297691900007', N'ICS', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (228, NULL, N'Alnehmi, A. J.', N'WOS:000297873200009', N'CE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (229, NULL, N'Al-Anezi, M. S.', N'WOS:000297901400036', N'PHYS', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (230, NULL, N'Kalakada, Zameer', N'WOS:000297901400036', N'CE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (231, NULL, N'Mahdi, Adnan', N'WOS:000298050700005', NULL, 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (232, NULL, N'Siddique, Tawqir A.', N'WOS:000298222500001', N'0', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (233, NULL, N'Fasiuddin, M.', N'WOS:000298268600019', N'ARCH', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (234, NULL, N'Odedairo, T.', N'WOS:000298361900030', N'CoREPRP', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (235, NULL, N'Nuhu, Abdulmumin A.', N'WOS:000298452500041', N'CHEM', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (236, NULL, N'Masihullah, J.', N'WOS:000298790200001', N'CHE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (237, NULL, N'Kaleel, S. H. Abdul', N'WOS:000298790200001', N'CHE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (238, NULL, N'Khan, Salman A.', N'WOS:000298853200010', N'ICS', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (239, NULL, N'Manea, A.', N'WOS:000298907500023', N'ICS', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (240, NULL, N'Hamodi, Jamil', N'WOS:000299097700005', N'ICS', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (241, NULL, N'Abdullateef, Adedigba A.', N'WOS:000299331500040', N'CoRERE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (242, NULL, N'Taiwo, S. L.', N'WOS:000299332900062', N'EE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (243, NULL, N'Abbasi, Ameer', N'WOS:000299472300011', N'ICS', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (244, NULL, N'Al-Anezi, M. S.', N'WOS:000299758800012', N'PHYS', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (245, NULL, N'Kalakada, Zameer', N'WOS:000299758800012', N'CE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (246, NULL, N'Alquaity, A. B. S.', N'WOS:000299764500013', N'ME', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (247, NULL, N'Abdullateef, Adedigba A.', N'WOS:000299831900069', N'CoRERE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (248, NULL, N'Aabed, Mohammed A.', N'WOS:000300544500007', N'ICS', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (249, NULL, N'Zeedan, H.', N'WOS:000300553800003', N'CE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (250, NULL, N'Benobaid, A.', N'WOS:000300563600001', N'MATH', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (251, NULL, N'Girei, Salihu Adamu', N'WOS:000300670500007', N'CHE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (252, NULL, N'Momin, O.', N'WOS:000300761400022', N'ME', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (253, NULL, N'Al-Harbi, Abdulrahman', N'WOS:000300929600024', N'CoRERE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (254, NULL, N'Khan, Masihullah Jabarulla', N'WOS:000300929600027', N'CHE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (255, NULL, N'Moinuddin, Abdurrahman', N'WOS:000301027700013', N'ME', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (256, NULL, N'Moinuddin, Abdurrahman', N'WOS:000301027700014', N'ME', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (257, NULL, N'Karimi, I. A.', N'WOS:000301340000004', N'CHE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (258, NULL, N'Benobaid, A.', N'WOS:000301607200017', N'MATH', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (259, NULL, N'Girei, Salihu Adamu', N'WOS:000302097300005', N'CHE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (260, NULL, N'Khurshid, H.', N'WOS:000302324000018', N'ME', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (261, NULL, N'Abdullateef, Adedigba A.', N'WOS:000302350700011', N'CoRERE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (262, NULL, N'Al-Issa, Khalid', N'WOS:000302611000005', N'ICS', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (263, NULL, N'Al-Qahtani, Ali S.', N'WOS:000302626900003', N'MATH', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (264, NULL, N'Akond, Mohammad S.', N'WOS:000302729800005', N'EE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (265, NULL, N'Al-Anezi, M. S.', N'WOS:000302766000011', N'PHYS', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (266, NULL, N'Kalakada, Zameer', N'WOS:000302766000011', N'CE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (267, NULL, N'Ahmed, Khaja W.', N'WOS:000303034000006', N'CHE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (268, NULL, N'Emzir, Muhammad F.', N'WOS:000303093000002', N'SE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (269, NULL, N'Odedairo, T.', N'WOS:000304106900026', N'CoREPRP', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (270, NULL, N'Al-Yousef, AbdulHadi', N'WOS:000304422200010', N'ME', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (271, NULL, N'Suleiman, M. A.', N'WOS:000304443100001', N'CHE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (272, NULL, N'Al-Shaheri, Ali Ahmed Qaid', N'WOS:000304734200012', N'0', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (273, NULL, N'Al-Amri, Fahad G.', N'WOS:000305104000009', N'ME', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (274, NULL, N'Manea, A.', N'WOS:000305109300015', N'ICS', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (275, NULL, N'Abbasi, Ameer Ahmed', N'WOS:000305666600005', N'ICS', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (276, NULL, N'Atanda, Luqman', N'WOS:000306933600033', N'CHE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (277, NULL, N'Girei, Salihu Adamu', N'WOS:000307387100006', N'CHE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (278, NULL, N'Kalakada, Zameer', N'WOS:000307415800033', N'CE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (279, NULL, N'Khalid, Haris M.', N'WOS:000307760400016', N'SE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (280, NULL, N'Bin Sohail, Omer', N'WOS:000308222600001', N'CHE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (281, NULL, N'Khan, Masihullah Jabarullah', N'WOS:000308222600001', N'CHE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (282, NULL, N'Khan, Muhammad U.', N'WOS:000308462900002', N'EE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (283, NULL, N'Khan, Masihullah Jabarulla', N'WOS:000308680300047', N'CHE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (284, NULL, N'Kaleel, S. H. Abdul', N'WOS:000308680300047', N'CHE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (285, NULL, N'Al-Ees, Osama', N'WOS:000308959500004', N'EE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (286, NULL, N'Alabi, Wahab O.', N'WOS:000309644400026', N'CoREPRP', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (287, NULL, N'Nuhu, Abdulmumin A.', N'WOS:000310006300001', N'CHEM', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (288, NULL, N'Bello, Mufatiu M.', N'WOS:000310040000007', N'ME', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (289, NULL, N'Momin, O.', N'WOS:000310661800003', N'ME', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (290, NULL, N'Tirmizi, Syed A.', N'WOS:000310940000033', N'ME', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (291, NULL, N'Kalakada, Zameer', N'WOS:000311008400009', N'CE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (292, NULL, N'Akram, Muhammad Imran', N'WOS:000311159500001', N'SE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (293, NULL, N'Atanda, Luqman', N'WOS:000311184500035', N'CHE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (294, NULL, N'Al-Kutti, Walid A.', N'WOS:000311361900001', N'CE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (295, NULL, N'Nuhu, Abdulmumin A.', N'WOS:000311574500018', N'CHEM', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (296, NULL, N'Hamawi, M.', N'WOS:000312683300041', N'ICS', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (297, NULL, N'Alquaity, Awad B. S.', N'WOS:000312972900014', N'ME', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (298, NULL, N'Awaida, Sameh M.', N'WOS:000313032600004', N'ICS', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (299, NULL, N'Abdel-Hady, Afaf', N'WOS:000313633400001', N'PHYS', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (300, NULL, N'Al-Ees, Osama', N'WOS:000313720800006', N'EE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (301, NULL, N'Al-Merbati, A. S.', N'WOS:000314191100079', N'ME', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (302, NULL, N'Alquaity, Awad B. S.', N'WOS:000314565500003', N'ME', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (303, NULL, N'Odedairo, T.', N'WOS:000314825900012', N'CoREPRP', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (304, NULL, N'Khan, Salman A.', N'WOS:000314905000028', N'ICS', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (305, NULL, N'Nuhu, Abdulmumin A.', N'WOS:000315337500003', N'CHEM', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (306, NULL, N'Khalid, Haris M.', N'WOS:000315569200040', N'SE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (307, NULL, N'Akram, Muhammad', N'WOS:000315569200040', N'SE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (308, NULL, N'Altuwaijri, Saleh', N'WOS:000315876300001', N'CHEM', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (309, NULL, N'Odedairo, T.', N'WOS:000315964900003', N'CoREPRP', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (310, NULL, N'Al-Jaroudi, Said S.', N'WOS:000316033100055', N'CHE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (311, NULL, N'Altuwaijri, Saleh', N'WOS:000316033100055', N'CHEM', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (312, NULL, N'Alquaity, Awad B. S.', N'WOS:000316644500001', N'ME', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (313, NULL, N'Al-Hakami, Samer M.', N'WOS:000317220500001', N'CHE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (314, NULL, N'Atanda, Luqman', N'WOS:000317302200014', N'CHE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (315, NULL, N'Mohamed, Shahab', N'WOS:000317402600001', N'SE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (316, NULL, N'Khan, Masiullah J.', N'WOS:000317462700021', N'CHE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (317, NULL, N'Firdous, Syed Naeem', N'WOS:000317617600003', N'ICS', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (318, NULL, N'Hussain, M. T.', N'WOS:000317658200001', N'EE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (319, NULL, N'Khalid, Haris M.', N'WOS:000317887100007', N'SE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (320, NULL, N'Mozafari, Masoud', N'WOS:000317911500053', NULL, 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (321, NULL, N'Deif, Sameir', N'WOS:000317963200045', N'EE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (322, NULL, N'Abdullahi, K.', N'WOS:000318021100024', N'ME', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (323, NULL, N'Malik, M. H.', N'WOS:000318127400024', N'ME', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (324, NULL, N'Abdel-Hady, Afaf', N'WOS:000318351700010', N'PHYS', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (325, NULL, N'Hakeem, Ibrahim', N'WOS:000318465000014', N'CE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (326, NULL, N'Al-Ees, Osama', N'WOS:000318499700019', N'EE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (327, NULL, N'Abbasi, Ameer A.', N'WOS:000318514000024', N'ICS', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (328, NULL, N'Hossain, Muhammad Imtiaz', N'WOS:000319075100009', N'CHE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (329, NULL, N'Atanda, Luqman', N'WOS:000319528900056', N'CHE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (330, NULL, N'Malik, M. H.', N'WOS:000319634600013', N'ME', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (331, NULL, N'Ali, Anum', N'WOS:000319706200004', N'EE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (332, NULL, N'Khwaja, Salman', N'WOS:000319997100002', N'ICS', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (333, NULL, N'Khattak, Obaid Ur Rehman', N'WOS:000320138700006', N'EE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (334, NULL, N'Odewunmi, Nurudeen', N'WOS:000320193100029', N'CENT', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (335, NULL, N'Mahfouz, Wael', N'WOS:000320193100029', NULL, 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (336, NULL, N'Akram, Muhammad I.', N'WOS:000320291800001', N'SE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (337, NULL, N'Qahtan, Talal E.', N'WOS:000320632200085', N'PHYS', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (338, NULL, N'Abdulraziq, A.', N'WOS:000320645300005', N'0', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (339, NULL, N'Al-Yami, Mohammed', N'WOS:000321037600107', N'CoRERE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (340, NULL, N'Adedigba, Abdul-lateef', N'WOS:000321411800046', N'CoRERE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (341, NULL, N'Bakare, Idris A.', N'WOS:000321411800046', N'CENT', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (342, NULL, N'Alquaity, Awad B. S.', N'WOS:000321683000016', N'ME', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (343, NULL, N'Khalid, Haris M.', N'WOS:000321714000001', N'SE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (344, NULL, N'Farooqui, Azharuddin E.', N'WOS:000321759100001', N'ME', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (345, NULL, N'Sohail, Omer Bin', N'WOS:000322156300010', N'CHE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (346, NULL, N'Hussain, Muhammad Imtiaz', N'WOS:000322230000001', N'ICS', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (347, NULL, N'Akram, Muhammad I.', N'WOS:000322277800001', N'SE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (348, NULL, N'Akram, Muhammad Imran', N'WOS:000322713600005', N'SE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (349, NULL, N'Khan, Muhammad U.', N'WOS:000322716900038', N'EE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (350, NULL, N'Numan, Ahmad B.', N'WOS:000322716900038', N'EE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (351, NULL, N'Altuwaijri, Saleh', N'WOS:000322938100030', N'CHEM', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (352, NULL, N'Al-Yami, Mohammed', N'WOS:000322943600021', N'CoRERE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (353, NULL, N'Khan, Massihullah J.', N'WOS:000322968400007', N'CHE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (354, NULL, N'Al-Gharabli, Muhammad M.', N'WOS:000323083500009', N'MATH', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (355, NULL, N'Khurshid, Zahiruddin', N'WOS:000323237900007', N'0', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (356, NULL, N'Abdellatif, Mohammad M.', N'WOS:000323273700013', N'EE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (357, NULL, N'Mahfoz, Wael', N'WOS:000323851300380', NULL, 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (358, NULL, N'Altuwaijri, Saleh', N'WOS:000324152700081', N'CHEM', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (359, NULL, N'Al-Jaroudi, Said S.', N'WOS:000324303602072', N'CHE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (360, NULL, N'Hakeem, Ibrahim', N'WOS:000324462500004', N'CE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (361, NULL, N'Al-Yami, Mohammed', N'WOS:000324475103776', N'CoRERE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (362, NULL, N'Al-Yami, Mohammed', N'WOS:000324503203174', N'CoRERE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (363, NULL, N'Abdullahi, Kachalla', N'WOS:000324611900004', N'ME', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (364, NULL, N'Subhan, Abdul', N'WOS:000324787600043', N'ME', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (365, NULL, N'Mahemood, Shaker A.', N'WOS:000324900200029', N'EE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (366, NULL, N'Siddiqui, Osman K.', N'WOS:000325302700016', N'ME', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (367, NULL, N'Alabi, Wahab O.', N'WOS:000325689000007', N'CoREPRP', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (368, NULL, N'Zafar, Mohammed N.', N'WOS:000326126800011', N'ME', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (369, NULL, N'Nsubuga, Hakimu', N'WOS:000326258000007', N'CHEM', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (370, NULL, N'Qahtan, Talal F.', N'WOS:000326580800024', N'PHYS', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (371, NULL, N'Akinpelu, Akeem', N'WOS:000326661200016', N'CHEM', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (372, NULL, N'Al-Sharafi, Abdullah', N'WOS:000326661400010', N'ME', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (373, NULL, N'Ali, Ahmad I.', N'WOS:000326661400010', N'ME', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (374, NULL, N'Lukman, Salihu', N'WOS:000326704600001', N'CE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (375, NULL, N'Adinoyi, Muhammad J.', N'WOS:000326858200023', N'CoRERE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (376, NULL, N'Al-Zahrani, Ibrahim', N'WOS:000326873900001', N'CHEM', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (377, NULL, N'Abdel-Hady, Afaf', N'WOS:000327584700001', N'PHYS', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (378, NULL, N'Al-Yami, Mohammed A.', N'WOS:000327803900027', N'CoRERE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (379, NULL, N'Alfaifi, N.', N'WOS:000327871500008', N'CHE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (380, NULL, N'Mizanurrahman, M.', N'WOS:000327871500008', N'CoRECOR', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (381, NULL, N'Hussain, M. Masood', N'WOS:000327909800015', N'SE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (382, NULL, N'Arshed, G. M.', N'WOS:000328016200003', N'ME', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (383, NULL, N'Zia, M. Fahad', N'WOS:000328527800013', N'EE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (384, NULL, N'Abdelhafiz, Abubakr Hassan', N'WOS:000328691900010', N'EE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (385, NULL, N'Numan, A. B.', N'WOS:000328787200001', N'EE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (386, NULL, N'Qahtan, T. F.', N'WOS:000328810300007', N'PHYS', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (387, NULL, N'Hakeem, Ibrahim Y.', N'WOS:000329080900017', N'CE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (388, NULL, N'Qayyum, Hafiz Adil', N'WOS:000329095300067', N'PHYS', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (389, NULL, N'Yusuf, Moruf Olalekan', N'WOS:000329118700047', N'CER', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (390, NULL, N'Al Swat, Abdullah', N'WOS:000329618403383', N'0', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (391, NULL, N'Lukman, Salihu', N'WOS:000329693400001', N'CE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (392, NULL, N'Benaafi, Mohammed', N'WOS:000329844600006', N'0', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (393, NULL, N'Siddique, Rashid Ghulam', N'WOS:000329893200010', N'PHYS', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (394, NULL, N'Odewunmi, Nurudeen', N'WOS:000329940300015', N'CHEM', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (395, NULL, N'AlSharaa, Abdulnaser', N'WOS:000329940300015', N'SE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (396, NULL, N'Al-Anezi, M. S.', N'WOS:000329940300053', N'PHYS', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (397, NULL, N'Kalakada, Zameer', N'WOS:000329940300053', N'CE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (398, NULL, N'Qasem, Naef A. A.', N'WOS:000329953100036', N'ME', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (399, NULL, N'Alsurakji, Ihab', N'WOS:000330085500046', N'ME', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (400, NULL, N'Arafeh, Abdalrahman M.', N'WOS:000330207700001', N'ICS', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (401, NULL, N'Tunde, Lukman O.', N'WOS:000330407300001', N'ME', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (402, NULL, N'Yusuf, Moruf Olalekan', N'WOS:000330489200042', N'CER', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (403, NULL, N'Malik, M. A.', N'WOS:000330489200082', N'CER', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (404, NULL, N'Jibran, Mohammed Abdul Azeem', N'WOS:000330505800001', N'CE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (405, NULL, N'Al Sharif, Sharif M. S.', N'WOS:000330630300039', N'SE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (406, NULL, N'Ali, Saeed M.', N'WOS:000330653800001', N'MATH', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (407, NULL, N'Labaran, B. A.', N'WOS:000330933300004', N'CE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (408, NULL, N'Al-Mehthel, Mohammed', N'WOS:000331004100043', N'CE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (409, NULL, N'Zeino, Aasem', N'WOS:000331319300001', N'CHEM', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (410, NULL, N'Bello, Mufatiu M.', N'WOS:000331424000004', N'ME', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (411, NULL, N'Yusuf, Moruf Olalekan', N'WOS:000331424400058', N'CER', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (412, NULL, N'Hasan, Osama', N'WOS:000331494200011', N'ME', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (413, NULL, N'Ali, Anum', N'WOS:000331506000026', N'EE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (414, NULL, N'Al-Zahrani, Ibrahim', N'WOS:000331688400013', N'CHEM', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (415, NULL, N'Yusuf, Moruf Olalekan', N'WOS:000331721100021', N'CER', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (416, NULL, N'Mohammad, K.', N'WOS:000331753400001', N'ME', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (417, NULL, N'Suleiman, M. A.', N'WOS:000331790400001', N'CHE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (418, NULL, N'Khan, Gulam Dastagir', N'WOS:000331849800029', N'SE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (419, NULL, N'Ibrahim, Mansur B.', N'WOS:000332142600006', N'CHEM', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (420, NULL, N'Hassan Hamid, Matasm M.', N'WOS:000332204100003', N'SE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (421, NULL, N'Alabi, Wahab O.', N'WOS:000332407200015', N'CoREPRP', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (422, NULL, N'Aslam, Waqas', N'WOS:000332412900026', N'CoREPRP', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (423, NULL, N'Qahtan, T. F.', N'WOS:000332837900018', N'PHYS', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (424, NULL, N'Khan, Muhammad. U.', N'WOS:000332848500024', N'EE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (425, NULL, N'Siddiqui, Osman K.', N'WOS:000332988300005', N'ME ', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (426, NULL, N'Farooqui, A. E.', N'WOS:000332988300010', N'ME', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (427, NULL, N'Al-Tamimi, Karama M.', N'WOS:000333721600011', N'0', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (428, NULL, N'Suara, Kabir A.', N'WOS:000333883100002', N'ME', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (429, NULL, N'Rajhi, Mohammed', N'WOS:000333883100002', N'ME', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (430, NULL, N'Ali, Hussain', N'WOS:000333981000004', N'EE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (431, NULL, N'Luqman, Hamzah', N'WOS:000334004600012', N'ICS', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (432, NULL, N'Wafar, Mohideen', N'WOS:000334141400007', N'CEW', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (433, NULL, N'Babaqi, Badiea S.', N'WOS:000334306500003', N'CHE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (434, NULL, N'Hendi, Abdulmajeed H. Y.', N'WOS:000334360100001', N'PHYS', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (435, NULL, N'Siddiqui, F. R.', N'WOS:000334897700020', N'ME', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (436, NULL, N'Al-Qahtani, Ali S.', N'WOS:000335094100002', N'MATH', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (437, NULL, N'Ali, Anum', N'WOS:000335096700008', N'EE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (438, NULL, N'Ali, S. S.', N'WOS:000335210200009', N'0', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (439, NULL, N'Muhammadain, A.', N'WOS:000335210200009', NULL, 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (440, NULL, N'Rajhi, M. A.', N'WOS:000335618400009', N'ME', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (441, NULL, N'Taleb, Jad', N'WOS:000335757000064', N'ME', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (442, NULL, N'Odedairo, T.', N'WOS:000335830400006', N'CoREPRP', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (443, NULL, N'Rashed, Abdallah Hasan', N'WOS:000335830400049', N'ICS', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (444, NULL, N'Memon, A. M.', N'WOS:000335865400019', N'CER', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (445, NULL, N'Tirmizi, Syed A.', N'WOS:000336352000012', N'ME', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (446, NULL, N'Siddiqui, Osman K.', N'WOS:000336352000012', N'ME', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (447, NULL, N'Issa, Yazan F.', N'WOS:000336420900008', N'CE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (448, NULL, N'Awayssa, O.', N'WOS:000336468800021', N'CoREPRP', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (449, NULL, N'Al-Mutairi, Saad M.', N'WOS:000336554600004', N'PETE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (450, NULL, N'Mustafa, A. Zainelabdeen A.', N'WOS:000336772700036', N'CHE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (451, NULL, N'Fatayer, Fady', N'WOS:000336797300006', N'ARE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (452, NULL, N'Al-Tamimi, Karama M.', N'WOS:000337681600011', N'EE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (453, NULL, N'Ali, Anum', N'WOS:000337790500004', N'EE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (454, NULL, N'Mehanna, N. A.', N'WOS:000337847200021', N'CHEM', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (455, NULL, N'Diraneyya, O. M.', N'WOS:000337914900024', N'ICS', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (456, NULL, N'Seliman, Adam A. A.', N'WOS:000337995700011', N'CHEM', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (457, NULL, N'Bhuiyan, Tazul I.', N'WOS:000338040400012', N'CoREPRP', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (458, NULL, N'Al-Jaroudi, Said S.', N'WOS:000338117900064', N'CHE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (459, NULL, N'Altuwaijri, Saleh', N'WOS:000338117900064', N'CHEM', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (460, NULL, N'Ul Qadir, Najam', N'WOS:000338517300005', N'ME', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (461, NULL, N'Alyazidi, Nezar M.', N'WOS:000338632100004', N'SE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (462, NULL, N'Khalid, Haris M.', N'WOS:000338632100005', N'SE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (463, NULL, N'Ali, Saeed M.', N'WOS:000338655900001', N'MATH', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (464, NULL, N'Al-Merbati, A. S.', N'WOS:000339067300008', N'ME', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (465, NULL, N'Al-Ismail, F. S.', N'WOS:000339449300006', N'EE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (466, NULL, N'Sabih, Muhammad', N'WOS:000339960400003', N'SE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (467, NULL, N'Yusuf, Moruf O.', N'WOS:000340030800002', N'CER', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (468, NULL, N'Alyazidi, Nezar M.', N'WOS:000340192900009', N'SE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (469, NULL, N'Ali, Saeed M.', N'WOS:000340225300001', N'MATH', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (470, NULL, N'Walwil, Husam M.', N'WOS:000340304600033', N'CoRERE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (471, NULL, N'Mohammad, K.', N'WOS:000340328600035', N'ME', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (472, NULL, N'Taiwo, Sulaiman', N'WOS:000340336100007', N'EE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (473, NULL, N'Adamu, Sagir', N'WOS:000340352000104', N'CHEM', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (474, NULL, N'Fatayer, Fady', N'WOS:000340383900005', N'ARE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (475, NULL, N'Liu, J.', N'WOS:000340436000012', N'EE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (476, NULL, N'Bin Sohail, Omer', N'WOS:000340659600024', N'CHE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (477, NULL, N'Khan, Masihullah Jabarullah', N'WOS:000340659600024', N'CHE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (478, NULL, N'Yusuf, Moruf Olalekan', N'WOS:000340688200064', N'CER', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (479, NULL, N'Bakare, Idris A.', N'WOS:000340945400015', N'CENT', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (480, NULL, N'Alawsh, Saleh A.', N'WOS:000340945500049', N'EE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (481, NULL, N'Yusuf, Moruf Olalekan', N'WOS:000340949300085', N'CER', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (482, NULL, N'Dabwan, Yousef N.', N'WOS:000340976900061', N'ME', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (483, NULL, N'Elbashir, Abubaker M.', N'WOS:000340990500002', N'ME', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (484, NULL, N'Koeshidayatullah, Ardiansyah', N'WOS:000341063800001', N'ES', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (485, NULL, N'Zubair, Mukarram', N'WOS:000341132900008', N'CHE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (486, NULL, N'Eduok, Ubong M.', N'WOS:000341489300001', N'CHEM', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (487, NULL, N'Eduok, Ubong M.', N'WOS:000341548500033', N'CHEM', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (488, NULL, N'Al-Mutairi, Saad M.', N'WOS:000341553500007', N'PETE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (489, NULL, N'Sabih, Muhammad', N'WOS:000341567800005', N'SE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (490, NULL, N'Al-Dawsari, Adel', N'WOS:000341572300001', N'CHEM', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (491, NULL, N'Adamu, Sagir', N'WOS:000341810400010', N'CHEM', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (492, NULL, N'Zaib, Alam', N'WOS:000341884100001', N'EE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (493, NULL, N'Taiwo, Sulaiman', N'WOS:000341897100047', N'EE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (494, NULL, N'Khalid, M. Sheraz', N'WOS:000342267700026', N'EE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (495, NULL, N'Numan, Ahmad B.', N'WOS:000342398000020', N'EE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (496, NULL, N'As-Sabban, Ibrahim A.', N'WOS:000342426000004', N'EE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (497, NULL, N'Aliyu, Ismaila Kayode', N'WOS:000343095300032', N'ME', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (498, NULL, N'Al-Rawashdeh, Yazan Mohammad', N'WOS:000343106600103', N'EE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (499, NULL, N'Abdel-Hady, Afaf', N'WOS:000343223300008', N'PHYS', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (500, NULL, N'Lukman, Salihu', N'WOS:000343308100003', N'CE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (501, NULL, N'Ganiyu, Saheed A.', N'WOS:000343388700014', N'CENT', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (502, NULL, N'Hakeem, Ibrahim', N'WOS:000343573300001', N'CE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (503, NULL, N'Al-shatri, Mohsen A.', N'WOS:000343575800001', N'CHEM', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (504, NULL, N'Lukman, Salihu', N'WOS:000343607100001', N'CE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (505, NULL, N'Mukhaimer, Ayman Wajeeh', N'WOS:000343647600008', N'CoRERE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (506, NULL, N'Mohammed, T.', N'WOS:000343769500053', N'CEW', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (507, NULL, N'Arslan, Muhammad', N'WOS:000343943700073', N'ES', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (508, NULL, N'Adeniye, Suli', N'WOS:000344163600005', N'CCITR', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (509, NULL, N'Eisa, Yagoub', N'WOS:000344322900034', N'ICS', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (510, NULL, N'Al-Tamimi, Karama Mohammed', N'WOS:000344483200023', N'EE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (511, NULL, N'Hasan, Osama', N'WOS:000344518400022', N'ME', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (512, NULL, N'Iyiola, Olaniyi Samuel', N'WOS:000344588200022', N'MATH', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (513, NULL, N'Oktasendra, F.', N'WOS:000344656700003', N'PHYS', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (514, NULL, N'Hussain, Syed', N'WOS:000344674700001', N'CENT', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (515, NULL, N'Al-Jaroudi, Said S.', N'WOS:000344736200003', N'CHE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (516, NULL, N'Altuwaijri, Saleh', N'WOS:000344736200003', N'CHEM', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (517, NULL, N'Abdallah, B.', N'WOS:000344746400015', N'MATH', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (518, NULL, N'Hossain, Muhammad I.', N'WOS:000344850700003', N'CHE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (519, NULL, N'Seliman, Adam A. A.', N'WOS:000344864600001', N'CHEM', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (520, NULL, N'Alade, I. O.', N'WOS:000344962100011', N'PHYS', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (521, NULL, N'Elarian, Yousef', N'WOS:000345094500009', NULL, 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (522, NULL, N'Eduok, U. M.', N'WOS:000345150600009', N'CHEM', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (523, NULL, N'Al-Sadat, W.', N'WOS:000345182300043', N'CHE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (524, NULL, N'ul Qadir, Najam', N'WOS:000345185200008', N'CoRERE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (525, NULL, N'Akinpelu, Akeem', N'WOS:000345226100100', N'CHEM', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (526, NULL, N'Taiwo, Sulaiman', N'WOS:000345305200012', N'EE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (527, NULL, N'Kalakada, Zameer', N'WOS:000345477700002', N'CE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (528, NULL, N'Al-Jaroudi, Said S.', N'WOS:000345507200016', N'CHE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (529, NULL, N'Iyiola, Olaniyi S.', N'WOS:000345579500003', N'MATH', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (530, NULL, N'Ali, Saad Aldin M.', N'WOS:000345689900073', N'CHE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (531, NULL, N'Amr, Issam Thaher', N'WOS:000345705100004', N'CHE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (532, NULL, N'Tanweer, Bilal', N'WOS:000345725800050', N'ME', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (533, NULL, N'Khan, Gulam Dastagir', N'WOS:000345819400019', N'SE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (534, NULL, N'Khan, Muhammad Umar', N'WOS:000346595600022', N'EE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (535, NULL, N'Jamil, Arias K.', N'WOS:000346684400016', N'CHEM', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (536, NULL, N'Ansari, Muhammad', N'WOS:000346731400026', N'EE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (537, NULL, N'Hussain, Muhammad Ibrar', N'WOS:000346889500003', N'ME', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (538, NULL, N'Suleiman, M. A.', N'WOS:000346900800002', N'CHE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (539, NULL, N'Ogunbadejo, Badatunde A.', N'WOS:000347049900015', N'CoREPRP', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (540, NULL, N'Al-Sadat, W.', N'WOS:000347263200034', N'CHE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (541, NULL, N'Atif, Maimoon', N'WOS:000347263800082', N'ME', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (542, NULL, N'Zubair, M. Ifras', N'WOS:000347263800082', N'ME', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (543, NULL, N'Memon, Azhar M.', N'WOS:000347363500019', N'SE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (544, NULL, N'Sanhoob, M.', N'WOS:000347496800042', N'CHE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (545, NULL, N'Jamil, A. K.', N'WOS:000347496800042', N'CHEM', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (546, NULL, N'Dalhat, M. A.', N'WOS:000347554900014', N'CE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (547, NULL, N'Aminuddin, Mohammad', N'WOS:000347577600011', N'CHE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (548, NULL, N'Siddiqui, F. R.', N'WOS:000347579100030', N'ME', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (549, NULL, N'Masood, Khurram', N'WOS:000347719500003', N'EE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (550, NULL, N'Ahmad, Han', N'WOS:000347747000020', NULL, 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (551, NULL, N'Al-Khan, Wasfi G.', N'WOS:000347747000020', NULL, 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (552, NULL, N'Elarian, Yousef', N'WOS:000347747000020', NULL, 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (553, NULL, N'Almoghathawi, Yasser A.', N'WOS:000347777300002', N'SE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (554, NULL, N'Khan, Gulam Dastagir', N'WOS:000347840600002', N'SE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (555, NULL, N'Younis, Muhammad Naeem', N'WOS:000347907900012', N'CoREPRP', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (556, NULL, N'Luqman, Hamzah', N'WOS:000347966200008', N'ICS', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (557, NULL, N'Omer, Muhammad', N'WOS:000347988700002', N'EE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (558, NULL, N'Arslan, Muhammad', N'WOS:000348025100001', N'ES', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (559, NULL, N'Khan, Ihsanullah', N'WOS:000348236300002', N'CHE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (560, NULL, N'As-Sabban, Ibrahim A.', N'WOS:000348236300021', N'EE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (561, NULL, N'Altuwaijri, Saleh', N'WOS:000348331900048', N'CHEM', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (562, NULL, N'Oladipo, Habeebllah B.', N'WOS:000348358200030', N'CoREPRP', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (563, NULL, N'Al-Jaroudi, Said S.', N'WOS:000348455200443', N'CHE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (564, NULL, N'Younis, Muhammad Naeem', N'WOS:000348455201406', N'CoREPRP', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (565, NULL, N'Abbas, Y.', N'WOS:000348463200005', N'CHE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (566, NULL, N'Mansha, M.', N'WOS:000348463200005', N'CHE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (567, NULL, N'Deif, Sameir E.', N'WOS:000348647500005', N'EE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (568, NULL, N'Moied, K.', N'WOS:000348791100016', N'CE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (569, NULL, N'Al-Zahrani, Ibrahim', N'WOS:000348802900001', N'CHEM', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (570, NULL, N'Mohammed, Munzir H. Aneel', N'WOS:000348802900001', N'CHE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (571, NULL, N'Zafar, Muhammad Nauman', N'WOS:000349009400015', N'CoRECOR', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (572, NULL, N'Al-Khaldi, Fahad Abdulaziz', N'WOS:000349079300001', N'CHE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (573, NULL, N'Mohammad, K.', N'WOS:000349163400009', N'ME', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (574, NULL, N'Akinpelu, Adeola A.', N'WOS:000349165105230', N'CHEM', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (575, NULL, N'Karume, Ibrahim', N'WOS:000349167402647', N'CHEM', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (576, NULL, N'Akande, Kabiru O.', N'WOS:000349350500011', N'EE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (577, NULL, N'Kaleem, O. S.', N'WOS:000349376100005', N'ME', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (578, NULL, N'Ibrahim, Mansur B.', N'WOS:000349388100006', N'CHEM', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (579, NULL, N'Yusuf, Moruf Olalekan', N'WOS:000349443600019', N'CER', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (580, NULL, N'Odewunmi, Nurudeen Adewale', N'WOS:000349523600005', N'CoRECOR', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (581, NULL, N'Abubakar, Abba Abdulhamid', N'WOS:000349680100014', N'ME', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (582, NULL, N'Ihsanullah', N'WOS:000349757200027', N'CHE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (583, NULL, N'Sanhoob, Mohammed A.', N'WOS:000349758600025', N'CHE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (584, NULL, N'Rezq, Murad F.', N'WOS:000349776600041', NULL, 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (585, NULL, N'Dabwan, Yousef N.', N'WOS:000349880400013', N'ME', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (586, NULL, N'Odewunmi, N. A.', N'WOS:000350079800031', N'CoRECOR', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (587, NULL, N'Abdul-lateef, Adedigba', N'WOS:000350191200018', N'CoRERE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (588, NULL, N'Arif, Taib Muhammad', N'WOS:000350482800006', NULL, 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (589, NULL, N'Akande, Kabiru O.', N'WOS:000350513800054', N'EE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (590, NULL, N'Al-Aghbari, Amran', N'WOS:000350569300002', N'ICS', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (591, NULL, N'Baig, Nadeem', N'WOS:000350572500011', N'CHEM', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (592, NULL, N'Daud, Muhammad', N'WOS:000350572500011', N'OPQ', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (593, NULL, N'Alhaffar, Mouheddin', N'WOS:000350643700034', NULL, 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (594, NULL, N'Shemis, Mohamed', N'WOS:000350658900040', N'PHYS', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (595, NULL, N'Eduok, Ubong M.', N'WOS:000350877100076', N'CHEM', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (596, NULL, N'Al-Basit, Suhaib M.', N'WOS:000350902300016', N'EE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (597, NULL, N'Walwil, Husam M.', N'WOS:000350937900026', N'CoRERE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (598, NULL, N'Waseeuddin, Mohammed', N'WOS:000350939600005', N'ME', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (599, NULL, N'Akande, Kabiru O.', N'WOS:000350994700018', N'EE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (600, NULL, N'Al-Sharafi, Abdullah', N'WOS:000350997300009', N'ME', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (601, NULL, N'Ali, Syed Haroon', N'WOS:000351083700032', N'ES', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (602, NULL, N'Iwalewa, Tajudeen M.', N'WOS:000351083700036', N'ES', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (603, NULL, N'Basabaa, Abdulsalam', N'WOS:000351240600012', N'CHEM', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (604, NULL, N'Ahmad, S. H. A.', N'WOS:000351278200003', N'PHYS', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (605, NULL, N'Daud, Muhammad', N'WOS:000351435400019', N'OPQ', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (606, NULL, N'Akinpelu, Akeem', N'WOS:000351693500039', N'CHEM', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (607, NULL, N'Atif, Maimoon', N'WOS:000351788700006', N'ME', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (608, NULL, N'Atanda, Luqman A.', N'WOS:000351966600004', N'CoREPRP', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (609, NULL, N'Baig, Nadeem', N'WOS:000352047400010', N'CHEM', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (610, NULL, N'Atif, Maimoon', N'WOS:000352169300001', N'ME', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (611, NULL, N'Romadhon, Moch S.', N'WOS:000352172700009', N'PHYS', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (612, NULL, N'Naseer, Muhammad Muzammal', N'WOS:000352218700044', N'EE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (613, NULL, N'Aliyu, Ismaila Kayode', N'WOS:000352282200002', N'ME', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (614, NULL, N'Al-Matar, Ali Kh.', N'WOS:000352446100001', N'CHE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (615, NULL, N'Majeed, Khaqan', N'WOS:000352569700012', N'EE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (616, NULL, N'Yusuf, Moruf Olalekan', N'WOS:000352575600003', N'CER', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (617, NULL, N'Al-Khaldi, Fahad Abdulaziz', N'WOS:000352661300039', N'CHE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (618, NULL, N'Ihsanullah', N'WOS:000352661300039', N'CHE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (619, NULL, N'Zafar, Muhammad Nauman', N'WOS:000352670200030', N'CoRECOR', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (620, NULL, N'Sabih, Muhammad', N'WOS:000352678200015', N'SE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (621, NULL, N'Mehanna, N. A.', N'WOS:000352793300028', N'CHEM', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (622, NULL, N'Akande, Kabiru O.', N'WOS:000352955600028', N'EE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (623, NULL, N'Lukman, Salihu', N'WOS:000353204300004', N'CE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (624, NULL, N'Usman, Abdullahi', N'WOS:000353204300004', N'CE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (625, NULL, N'Al-Gharabli, Mohammad M.', N'WOS:000353393700049', N'MATH', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (626, NULL, N'Aslam, Waqas', N'WOS:000353413300011', N'CoREPRP', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (627, NULL, N'Karume, Ibrahim', N'WOS:000353599300022', N'CHEM', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (628, NULL, N'Khater, Mohammad A.', N'WOS:000353744000013', NULL, 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (629, NULL, N'Mukhaimer, A.', N'WOS:000353744200015', N'CoRERE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (630, NULL, N'Sibaweihi, Najmudeen', N'WOS:000353787600003', N'PETE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (631, NULL, N'Hashim, H. A.', N'WOS:000353792600001', N'SE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (632, NULL, N'Tanweer, Bilal', N'WOS:000353963400023', N'ME', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (633, NULL, N'Daud, Muhammad', N'WOS:000354001000019', N'OPQ', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (634, NULL, N'Misbhauddin, Mohammed', N'WOS:000354094400019', N'ICS', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (635, NULL, N'Seliman, Adam A. A.', N'WOS:000354139900039', N'CHEM', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (636, NULL, N'Jamiu, Zakariyah A.', N'WOS:000354447800003', N'CHEM', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (637, NULL, N'Fatayer, Fady', N'WOS:000354554600024', N'ARE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (638, NULL, N'Ibrahim, Mansur B.', N'WOS:000354818200010', N'CHEM', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (639, NULL, N'Al-Qahtani, Ali S.', N'WOS:000354874600003', N'MATH', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (640, NULL, N'Nahar, Khalid', N'WOS:000354913600004', N'ICS', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (641, NULL, N'Jameel, Abdul Latif', N'WOS:000355035100001', NULL, 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (642, NULL, N'Ba-Salem, Abdullah O.', N'WOS:000355045400002', N'CHEM', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (643, NULL, N'Al-Lail, Mohammed H.', N'WOS:000355144500033', N'MATH', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (644, NULL, N'Dhar, Sagar K.', N'WOS:000355278200042', N'EE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (645, NULL, N'Alam, Zeeshan', N'WOS:000355284500002', N'ME', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (646, NULL, N'Khalid, Arsalan', N'WOS:000355371500014', N'CHE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (647, NULL, N'Elamin, Mohanned M.', N'WOS:000355496300013', N'CENT', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (648, NULL, N'Khan, Gulam Dastagir', N'WOS:000355497500014', N'SE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (649, NULL, N'Asmaly, Hamza A.', N'WOS:000355571800025', N'KACST-TIC', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (650, NULL, N'Ihsanullah', N'WOS:000355571800025', N'CHE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (651, NULL, N'Imam, Ashhad', N'WOS:000355701400003', N'CE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (652, NULL, N'Ashadi, Abdul Latif', N'WOS:000356000700029', N'ES', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (653, NULL, N'Habibullah, Yusuf B.', N'WOS:000356101200039', N'PHYS', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (654, NULL, N'Oloore, Luqman E.', N'WOS:000356101200039', N'PHYS', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (655, NULL, N'Al-Ugla, A. A.', N'WOS:000356124600011', N'ME', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (656, NULL, N'Deif, Sameir', N'WOS:000356178500005', N'EE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (657, NULL, N'Abdelgawad, K. Z.', N'WOS:000356180700006', N'PETE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (658, NULL, N'AbdelDayem, Hany M.', N'WOS:000356185100005', N'CoREPRP', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (659, NULL, N'Khan, Muhammad Umar', N'WOS:000356366800009', N'EE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (660, NULL, N'AbdElazem, Sohaib', N'WOS:000356458800017', N'PHYS', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (661, NULL, N'Abdel-Hady, Afaf', N'WOS:000356498700034', N'PHYS', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (662, NULL, N'Hakeem, Ibrahim', N'WOS:000356543400006', N'CE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (663, NULL, N'Younis, Muhammad Naeem', N'WOS:000356592000006', N'CHE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (664, NULL, N'Tahir, Furqan', N'WOS:000356617200005', N'ME', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (665, NULL, N'Atif, Maimoon', N'WOS:000356617200006', N'ME', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (666, NULL, N'Alzahrani, Fahad M.', N'WOS:000356618000012', N'ME', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (667, NULL, N'Liu, Huicheng', N'WOS:000356753900022', N'ME', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (668, NULL, N'Al-Sharafi, Abdullah', N'WOS:000356754700013', N'ME', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (669, NULL, N'Qasem, Naef A. A.', N'WOS:000356754700032', N'ME', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (670, NULL, N'Koeshidayatullah, Ardiansyah', N'WOS:000356757400006', N'ES', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (671, NULL, N'Ali, S. M.', N'WOS:000356980100005', N'CEW', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (672, NULL, N'Bakare, Idris A.', N'WOS:000356991600038', N'CENT', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (673, NULL, N'Mohammed, I.', N'WOS:000356998302131', NULL, 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (674, NULL, N'Zraiqat, Fadi', N'WOS:000356998302349', N'PHYS', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (675, NULL, N'Abdulnaser, Alsharaa', N'WOS:000357015300006', N'CHEM', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (676, NULL, N'Ba-Salem, Abdullah O.', N'WOS:000357157600022', N'CHE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (677, NULL, N'Ganiyu, Saheed A.', N'WOS:000357242800021', N'CENT', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (678, NULL, N'Muhammad, Qamaruddin', N'WOS:000357242800021', N'CENT', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (679, NULL, N'Odewunmi, Nurudeen A.', N'WOS:000357242800021', N'CoRECOR', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (680, NULL, N'Siddiqui, Osman K.', N'WOS:000357543100007', N'ME', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (681, NULL, N'Aliyu, Farouq M.', N'WOS:000357580500040', N'ICS', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (682, NULL, N'Binajjaj, Adel', N'WOS:000357580500040', N'MATH', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (683, NULL, N'Keshta, Ismail', N'WOS:000357580500040', N'ICS', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (684, NULL, N'Zubair, Mukarram', N'WOS:000357663000001', N'CHE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (685, NULL, N'Khalid, Mohamed H.', N'WOS:000357708400003', N'SE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (686, NULL, N'Ammar, Hussain T.', N'WOS:000357746500007', N'CE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (687, NULL, N'Eduok, Ubong Monday', N'WOS:000357797900004', N'CHEM', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (688, NULL, N'Bala, Abubakar', N'WOS:000357901800002', N'ICS', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (689, NULL, N'Bakare, Idris A.', N'WOS:000357907800027', N'CENT', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (690, NULL, N'Mohamed, Shamseldin A.', N'WOS:000357907800027', N'CHE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (691, NULL, N'Mukhaimer, A.', N'WOS:000358094600010', N'CoRERE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (692, NULL, N'Munem, Abdul', N'WOS:000358176900024', NULL, 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (693, NULL, N'Qureshi, Muhammad Ali', N'WOS:000358217600017', N'ICS', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (694, NULL, N'Luqman, Hamza', N'WOS:000358247100003', N'ICS', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (695, NULL, N'Shahid, Kh. Shahzada', N'WOS:000358314000004', N'ICS', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (696, NULL, N'Ali, Saad Aldin M.', N'WOS:000358379400005', N'CHE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (697, NULL, N'Al-Helali, Abdul-Aziz', N'WOS:000358450200007', N'ICS', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (698, NULL, N'Al-Nazer, Ahmed', N'WOS:000358665700003', N'ICS', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (699, NULL, N'Mohammed, Mawal A.', N'WOS:000358699900005', N'ICS', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (700, NULL, N'Saleh, Faisal', N'WOS:000358699900006', N'ICS', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (701, NULL, N'Rahman, Mohammed Abdul', N'WOS:000358728400006', NULL, 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (702, NULL, N'Al-Gharabli, Mohammad M.', N'WOS:000359383000014', N'MATH', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (703, NULL, N'Arafeh, Abdalrahman M.', N'WOS:000359433500007', N'ICS', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (704, NULL, N'Maraaba, Luqman', N'WOS:000359433500012', NULL, 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (705, NULL, N'Khalid, M. Sheraz', N'WOS:000359433500015', N'EE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (706, NULL, N'Bajwa, Muhammad Naseer', N'WOS:000359592900001', N'ICS', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (707, NULL, N'Helmi, Basem A.', N'WOS:000359595200012', NULL, 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (708, NULL, N'Elsafi, Amin M.', N'WOS:000359756000007', N'ME', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (709, NULL, N'Baloch, Ahmer A. B.', N'WOS:000359873300002', N'ME', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (710, NULL, N'Elsafi, Amin M.', N'WOS:000359873300034', N'ME', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (711, NULL, N'Alzahrani, F. M.', N'WOS:000359875100095', N'ME', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (712, NULL, N'Abdalwadoud, M.', N'WOS:000360027100051', N'CHEM', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (713, NULL, N'Arslan, Muhammad', N'WOS:000360064600025', N'ES', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (714, NULL, N'Bakare, Fatai Olawale', N'WOS:000360071700011', N'CENT', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (715, NULL, N'Habibullah, Yusuf B.', N'WOS:000360190200027', N'PHYS', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (716, NULL, N'Adetokunbo, Peter', N'WOS:000360227000075', N'ES', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (717, NULL, N'Edigbue, Paul', N'WOS:000360227000075', N'ES', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (718, NULL, N'Kasha, Ahmed', N'WOS:000360411300034', N'PETE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (719, NULL, N'Qahtan, Talal F.', N'WOS:000360445500091', N'PHYS', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (720, NULL, N'Ndubisi, Gibson C.', N'WOS:000360578100002', N'MGTMKT', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (721, NULL, N'Jamil, Anas Karrar', N'WOS:000360597000016', N'CHEM', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (722, NULL, N'Daud, Khaled A. K.', N'WOS:000360794600010', N'OPQ', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (723, NULL, N'Jamiu, Zakariyah A.', N'WOS:000360869200014', N'CHEM', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (724, NULL, N'Ilyas, A. M.', N'WOS:000360948600033', N'PHYS', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (725, NULL, N'Liadi, F. A.', N'WOS:000360948600033', N'PHYS', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (726, NULL, N'Ukashat, M. S.', N'WOS:000360948600033', N'PHYS', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (727, NULL, N'Khan, Ibrahim', N'WOS:000360980400012', N'CENT', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (728, NULL, N'Eduok, Ubong M.', N'WOS:000361140200030', N'CHEM', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (729, NULL, N'Popoola, Saheed A.', N'WOS:000361187700018', N'CHEM', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (730, NULL, N'Asmaly, Hamza A.', N'WOS:000361222000009', N'KACST-TIC', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (731, NULL, N'Ihsanullah', N'WOS:000361222000009', N'CHE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (732, NULL, N'Abdelbassit, Mohammed S. A.', N'WOS:000361251400020', N'CHEM', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (733, NULL, N'Habibullah, Y. B.', N'WOS:000361251700017', N'PHYS', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (734, NULL, N'Hendi, A. H. Y.', N'WOS:000361411600032', N'PHYS', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (735, NULL, N'Al-Jaroudi, Said S.', N'WOS:000361430000004', N'CHE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (736, NULL, N'Altuwaijri, Saleh', N'WOS:000361430000004', N'CHEM', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (737, NULL, N'Al-Enezi, Mamdouh S.', N'WOS:000361762700005', N'PHYS', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (738, NULL, N'Ayaz, Ali Asghar H.', N'WOS:000361762700005', N'PHYS', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (739, NULL, N'Ahmad, S. H. A.', N'WOS:000361774100013', N'PHYS', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (740, NULL, N'Popoola, Saheed A.', N'WOS:000361774900063', N'CHEM', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (741, NULL, N'Adetokunbo, Peter', N'WOS:000361829800066', N'ES', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (742, NULL, N'Edigbue, Paul', N'WOS:000361829800066', N'ES', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (743, NULL, N'Olalekan, Amao Abduljamiu', N'WOS:000361829800078', N'ES', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (744, NULL, N'Alyousf, F. K.', N'WOS:000361833000001', N'CER', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (745, NULL, N'Mohammad, A. I.', N'WOS:000361833000001', N'CER', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (746, NULL, N'Abubakar, Abba Abdulhamid', N'WOS:000362010800047', N'ME', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (747, NULL, N'Elsafi, Amin M.', N'WOS:000362142100059', N'ME', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (748, NULL, N'Mohamed, A. I.', N'WOS:000362296000010', N'CER', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (749, NULL, N'Abbas, Aamir', N'WOS:000362618700010', N'CHE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (750, NULL, N'Ihsanullah', N'WOS:000362618700010', N'CHE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (751, NULL, N'Jomaa, M. Y.', N'WOS:000362681000008', N'CHEM', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (752, NULL, N'Mustafa, A. Zainelabdeen A.', N'WOS:000362681000008', N'CHE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (753, NULL, N'Amin, Asjad', N'WOS:000362695200006', N'CeGP', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (754, NULL, N'Thabet, Abdulelah', N'WOS:000362818300001', N'CHEM', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (755, NULL, N'Bashir, Shahid M.', N'WOS:000362903000006', N'CHE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (756, NULL, N'Al-shatri, Mohsen A.', N'WOS:000362954000015', N'CHEM', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (757, NULL, N'Mohamed, Shamseldin A.', N'WOS:000363068200060', N'CHE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (758, NULL, N'Bajwa, Muhammad Naseer', N'WOS:000363185700001', N'ICS', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (759, NULL, N'Khan, Shehryar', N'WOS:000363185700001', N'ICS', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (760, NULL, N'Asmaly, Hamza A.', N'WOS:000363292000003', N'KACST-TIC', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (761, NULL, N'Ihsanullah', N'WOS:000363292000003', N'CHE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (762, NULL, N'Iyiola, Olaniyi Samuel', N'WOS:000363493900001', N'MATH', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (763, NULL, N'Ojo, Gbenga Olayinka', N'WOS:000363493900001', N'MATH', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (764, NULL, N'Nasir, Mohammad Tariq', N'WOS:000363580700001', N'ICS', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (765, NULL, N'Sabih, Muhammad', N'WOS:000363580700001', N'SE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (766, NULL, N'Shemis, Mohamed', N'WOS:000363715900045', N'PHYS', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (767, NULL, N'Eduok, Ubong', N'WOS:000364073700018', N'CHEM', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (768, NULL, N'Bin-Dahman, Osamah A.', N'WOS:000364391700019', N'CHE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (769, NULL, N'AlMuhaini, Mohammad', N'WOS:000364490800005', N'EE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (770, NULL, N'Daud, Muhammad', N'WOS:000364595000012', N'OPQ', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (771, NULL, N'Sattar, Danish', N'WOS:000364665400001', N'COE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (772, NULL, N'Baig, Nadeem', N'WOS:000364818700019', N'CHEM', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (773, NULL, N'Khan, Muhammad Shahzeb', N'WOS:000364867700001', N'ME', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (774, NULL, N'Yusuf, Moruf Olalekan', N'WOS:000365131000016', N'CER', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (775, NULL, N'Aman, A. M.', N'WOS:000365361900034', NULL, 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (776, NULL, N'Hamza, Amir', N'WOS:000365369500078', NULL, 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (777, NULL, N'Benaafi, Mohammed', N'WOS:000365450800064', N'ES', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (778, NULL, N'Mehmood, Umer', N'WOS:000365998800001', N'CoRERE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (779, NULL, N'Koeshidayatullah, Ardiansyah', N'WOS:000366066500004', N'ES', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (780, NULL, N'Qahtan, T. F.', N'WOS:000366219700116', N'PHYS', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (781, NULL, N'Ilyas, A. M.', N'WOS:000366219700116', N'PHYS', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (782, NULL, N'Ihsanullah', N'WOS:000366225200061', NULL, 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (783, NULL, N'Abbas, Aamir', N'WOS:000366225200061', NULL, 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (784, NULL, N'Ihsanullah', N'WOS:000366225200061', N'CHEM', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (785, NULL, N'Abbas, Aamir', N'WOS:000366225200061', N'CHEM', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (786, NULL, N'Abubakar, Abba Abdulhamid', N'WOS:000366449200011', N'ME', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (787, NULL, N'Hussain, A. I.', N'WOS:000366651400025', NULL, 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (788, NULL, N'Mosley, John C.', N'WOS:000366748900007', NULL, 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (789, NULL, N'Khalil, Umer', N'WOS:000366758300009', NULL, 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (790, NULL, N'Bakare, Idris A.', N'WOS:000366763900032', N'CENT', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (791, NULL, N'Alsharaa, Abdulnaser', N'WOS:000366772600006', N'CHEM', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (792, NULL, N'Memon, Azhar M.', N'WOS:000366935400009', NULL, 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (793, NULL, N'Oladipo, Habeebllah B.', N'WOS:000366961700004', N'CoREPRP', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (794, NULL, N'Subhan, Abdul', N'WOS:000366997600008', N'ME', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (795, NULL, N'Bashari, M. A.', N'WOS:000367094800008', NULL, 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (796, NULL, N'Osman, M. S.', N'WOS:000367094800008', NULL, 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (797, NULL, N'Abdulraziq, A. M.', N'WOS:000367094800008', NULL, 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (798, NULL, N'Liu, Huicheng', N'WOS:000367107700085', NULL, 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (799, NULL, N'Bakare, Fatai Olawale', N'WOS:000367324400081', NULL, 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (800, NULL, N'Mahfoz, Wael', N'WOS:000367324400081', NULL, 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (801, NULL, N'Bakare, Fatai Olawale', N'WOS:000367324400081', N'CHEM', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (802, NULL, N'Mahfoz, Wael', N'WOS:000367324400081', N'CHEM', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (803, NULL, N'Arslan, Muhammad', N'WOS:000367351200018', N'ES', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (804, NULL, N'Qureshi, Muhammad Ali', N'WOS:000367412700004', N'EE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (805, NULL, N'Abubakar, Abba Abdulhamid', N'WOS:000367715900008', NULL, 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (806, NULL, N'Memon, Azhar M.', N'WOS:000367754400006', NULL, 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (807, NULL, N'Omer, Khalid H.', N'WOS:000367757100100', NULL, 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (808, NULL, N'Seliman, Adam A.', N'WOS:000367757100100', NULL, 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (809, NULL, N'Altuwaijri, Saleh', N'WOS:000367757100100', NULL, 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (810, NULL, N'Al-Ugla, A. A.', N'WOS:000367758200097', NULL, 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (811, NULL, N'Wafar, Mohideen', N'WOS:000367760500010', NULL, 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (812, NULL, N'Mohammad, Tausiff F.', N'WOS:000367812600025', NULL, 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (813, NULL, N'Mohammad, Tausiff F.', N'WOS:000367812600025', NULL, 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (814, NULL, N'Owais, Ahmed', N'WOS:000367915800001', NULL, 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (815, NULL, N'Daud, Muhammad', N'WOS:000368199500061', NULL, 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (816, NULL, N'Daud, Muhammad', N'WOS:000368199500061', N'CHEM', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (817, NULL, N'Saeed, Mazin', N'WOS:000368216200001', NULL, 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (818, NULL, N'Saleh, Faisal', N'WOS:000368216200001', NULL, 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (819, NULL, N'Al-Insaif, Sadiq', N'WOS:000368216200001', NULL, 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (820, NULL, N'Ihsanullah', N'WOS:000368868600016', NULL, 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (821, NULL, N'Abbas, Aamir', N'WOS:000368868600016', NULL, 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (822, NULL, N'Koeshidayatullah, Ardiansyah', N'WOS:000368954600006', NULL, 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (823, NULL, N'Ansari, M. Abdul Hafeez', N'WOS:000368990200017', NULL, 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (824, NULL, N'Khan, Mohammed H.', N'WOS:000369166100059', NULL, 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (825, NULL, N'Khan, Mohammed H.', N'WOS:000369166100059', NULL, 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (826, NULL, N'Adesina, A. Y.', N'WOS:000369183900003', NULL, 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (827, NULL, N'Zafar, H.', N'WOS:000369183900012', NULL, 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (828, NULL, N'Waseeuddin, Mohammed', N'WOS:000369459600015', NULL, 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (829, NULL, N'Rafique, M. Mujahid', N'WOS:000369462100014', NULL, 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (830, NULL, N'Rafique, M. Mujahid', N'WOS:000369462100014', NULL, 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (831, NULL, N'Asmaly, Hamza A.', N'WOS:000369462300045', NULL, 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (832, NULL, N'Ihsanullah', N'WOS:000369462300045', NULL, 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (833, NULL, N'Asmaly, Hamza A.', N'WOS:000369462300045', N'CHEM', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (834, NULL, N'Ihsanullah', N'WOS:000369462300045', N'CHEM', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (835, NULL, N'Alsharaa, Abdulnaser', N'WOS:000369521200011', NULL, 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (836, NULL, N'Alsharaa, Abdulnaser', N'WOS:000369521200011', NULL, 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (837, NULL, N'Ibrahim, Mansur B.', N'WOS:000369557300012', NULL, 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (838, NULL, N'Arafeh, Abdalrahman M.', N'WOS:000369644500008', NULL, 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (839, NULL, N'Akande, K.', N'WOS:000369674000037', NULL, 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (840, NULL, N'Qahtan, Talal F.', N'WOS:000369680400109', NULL, 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (841, NULL, N'Qahtan, Talal F.', N'WOS:000369680400109', NULL, 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (842, NULL, N'Khashan, Nasser', N'WOS:000369942100006', NULL, 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (843, NULL, N'Eduok, Ubong M.', N'WOS:000369958300040', NULL, 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (844, NULL, N'Eduok, Ubong M.', N'WOS:000369958300040', NULL, 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (845, NULL, N'Mansha, Muhammad', N'WOS:000370096800002', NULL, 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (846, NULL, N'Alsharaa, Abdulnaser', N'WOS:000370096800002', NULL, 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (847, NULL, N'Mansha, Muhammad', N'WOS:000370096800002', NULL, 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (848, NULL, N'Alsharaa, Abdulnaser', N'WOS:000370096800002', N'CHEM', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (849, NULL, N'Jillani, Shehzada Muhammad Sajid', N'WOS:000370096800002', NULL, 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (850, NULL, N'Al-Sharafi, Abdullah', N'WOS:000370109800021', NULL, 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (851, NULL, N'Almutairi, Naif R.', N'WOS:000370152300012', NULL, 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (852, NULL, N'Shemis, Mohamed A.', N'WOS:000370163400017', NULL, 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (853, NULL, N'Shemis, Mohamed A.', N'WOS:000370163400017', NULL, 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (854, NULL, N'Abdul-Ghani, Hezam Akram', N'WOS:000370178600001', NULL, 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (855, NULL, N'Al-Amodi, Adel O.', N'WOS:000370196100008', NULL, 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (856, NULL, N'Al-Amodi, Adel O.', N'WOS:000370196100008', NULL, 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (857, NULL, N'Mukhtiar, Muhammad U.', N'WOS:000370456000059', NULL, 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (858, NULL, N'Baloch, Ahmer A. B.', N'WOS:000370456000111', NULL, 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (859, NULL, N'Kurniawan, Teguh', N'WOS:000370457700050', NULL, 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (860, NULL, N'Khalil, Umer', N'WOS:000370679000059', NULL, 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (861, NULL, N'Eduok, Ubong', N'WOS:000370717900052', NULL, 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (862, NULL, N'Eduok, Ubong', N'WOS:000370717900052', N'CHEM', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (863, NULL, N'Akande, Kabiru', N'WOS:000370820200001', NULL, 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (864, NULL, N'Sabih, Muhammad', N'WOS:000370832400028', NULL, 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (865, NULL, N'Younas, Muhammad', N'WOS:000370866700114', NULL, 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (866, NULL, N'Abdelrahman, Abdalla E.', N'WOS:000370875300040', NULL, 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (867, NULL, N'Nsubuga, Hakimu', N'WOS:000370882800001', NULL, 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (868, NULL, N'Omar, Mohammed Hussain', N'WOS:000370882800001', NULL, 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (869, NULL, N'Almansour, Abdullah', N'WOS:000370886300023', NULL, 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (870, NULL, N'Salaudeen, Shakirudeen A.', N'WOS:000370886700059', NULL, 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (871, NULL, N'Salaudeen, Shakirudeen A.', N'WOS:000370886700059', NULL, 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (872, NULL, N'Muhammad, Auwal M.', N'WOS:000370888200027', NULL, 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (873, NULL, N'Muhammad, Auwal M.', N'WOS:000370888200027', NULL, 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (874, NULL, N'Wafar, Mohideen', N'WOS:000370888600007', NULL, 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (875, NULL, N'Mohammad, K.', N'WOS:000370900900014', NULL, 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (876, NULL, N'Khawaja, Mohsin', N'WOS:000371086300013', NULL, 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (877, NULL, N'Akinpelu, Akeem', N'WOS:000371141500132', NULL, 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (878, NULL, N'Zeama, Mostafa', N'WOS:000371141500132', NULL, 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (879, NULL, N'Muhammad, Auwal M.', N'WOS:000371279900038', NULL, 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (880, NULL, N'Muhammad, Auwal M.', N'WOS:000371279900038', NULL, 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (881, NULL, N'Assi, Khaled J.', N'WOS:000371286900011', NULL, 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (882, NULL, N'Assi, Khaled J.', N'WOS:000371286900011', NULL, 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (883, NULL, N'Sanuade, Oluseun Adetola', N'WOS:000371380500034', NULL, 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (884, NULL, N'Abdullah, H. M.', N'WOS:000371479500024', NULL, 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (885, NULL, N'Danmaliki, Gaddafi I.', N'WOS:000371552200008', NULL, 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (886, NULL, N'Danmaliki, Gaddafi I.', N'WOS:000371552200008', NULL, 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (887, NULL, N'Baig, I.', N'WOS:000371560100030', NULL, 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (888, NULL, N'Adewumi, Adeshina A.', N'WOS:000371793400025', NULL, 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (889, NULL, N'Alade, Ibrahim O.', N'WOS:000371793400025', NULL, 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (890, NULL, N'Rafique, M. Mujahid', N'WOS:000371831900005', NULL, 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (891, NULL, N'Zahid, Umer', N'WOS:000371842100009', NULL, 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (892, NULL, N'Eduok, Ubong', N'WOS:000371843500012', NULL, 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (893, NULL, N'Adamu, Sagir', N'WOS:000371937900010', NULL, 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (894, NULL, N'Danmaliki, Gaddafi I.', N'WOS:000371937900051', NULL, 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (895, NULL, N'Akintola, Oluwafemi S.', N'WOS:000371937900068', NULL, 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (896, NULL, N'Binbeshr, Farid', N'WOS:000371938400002', NULL, 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (897, NULL, N'Waseeuddin, Mohammed', N'WOS:000371948400012', NULL, 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (898, NULL, N'Hasan, Md. Arif', N'WOS:000371948400094', NULL, 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (899, NULL, N'Shafiullah, Md', N'WOS:000371948400094', NULL, 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (900, NULL, N'Muhyedeen, Musah A.', N'WOS:000371948400094', NULL, 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (901, NULL, N'Ajadi, Jimoh Olawale', N'WOS:000372019000007', NULL, 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (902, NULL, N'Al-Ghamdi, Khalid', N'WOS:000372019000007', NULL, 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (903, NULL, N'Sabir, Adeel', N'WOS:000372182600004', NULL, 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (904, NULL, N'Abbas, Aamir', N'WOS:000372220000001', NULL, 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (905, NULL, N'Ihsanullah', N'WOS:000372220000001', NULL, 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (906, NULL, N'Habtoor, Mohammed S.', N'WOS:000372237900001', NULL, 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (907, NULL, N'Bala, Abubakar', N'WOS:000372260500002', NULL, 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (908, NULL, N'Bin Ali, Annas', N'WOS:000372274900002', NULL, 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (909, NULL, N'Mudallah, Omar A.', N'WOS:000372386700004', N'CEM', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (910, NULL, N'Rabbani, Fahad Ali', N'WOS:000372618000001', N'CHE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (911, NULL, N'Asmaly, Hamza A.', N'WOS:000372747700018', N'KACST-TIC', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (912, NULL, N'Ihsanullah', N'WOS:000372747700018', N'CHE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (913, NULL, N'Fatayer, Fady', N'WOS:000372805300034', N'ARE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (914, NULL, N'Khan, Abuzar', N'WOS:000373303800035', N'CENT', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (915, NULL, N'Bakare, Fatai Olawale', N'WOS:000373415500015', N'CENT', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (916, NULL, N'Bakare, Fatai Olawale', N'WOS:000373415500015', N'CENT', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (917, NULL, N'Al Omour, Ali M.', N'WOS:000373605400001', N'EE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (918, NULL, N'Barri, Assad', N'WOS:000373707700021', N'PETE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (919, NULL, N'Oktasendra, F.', N'WOS:000373942100001', N'PHYS', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (920, NULL, N'Oktasendra, F.', N'WOS:000373942100001', N'PHYS', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (921, NULL, N'IQBAL, S', N'WOS:A1988P012600004', NULL, 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (922, NULL, N'Salim, M', N'WOS:A1996WC51400007', N'PHYS', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (923, NULL, N'Shirokoff, JW', N'WOS:A1997XA83000008', N'CHEM', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (924, NULL, N'Fadhillah, Farid', N'WOS:000299207000009', N'CE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (925, NULL, N'Fadhillah, Farid', N'WOS:000307005300032', N'CE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (926, NULL, N'Ajayi, B. P.', N'WOS:000314825900026', N'CoREPRP', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (927, NULL, N'Ajayi, B. P.', N'WOS:000324103300032', N'CoREPRP', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (928, NULL, N'Al Mubarak, Ali A.', N'WOS:000327165200021', N'CoREPRP', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (929, NULL, N'Nag, A.', N'WOS:000344576600005', N'CHE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (930, NULL, N'Tassaduq, Noman Ali', N'WOS:000351741400008', N'EE', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (931, NULL, N'Ajayi, B. P.', N'WOS:000353248000016', N'CoREPRP', 0)
GO
INSERT [dbo].[Student_Involvement] ([Student_Involvement_ID], [Student_ID], [Student_Name], [WOS_Number], [Dept_Code], [is_First_Author]) VALUES (932, NULL, N'Faiz, Mohammed Mujahid Ulla', N'WOS:000358648200079', N'HBCC', 0)
GO
SET IDENTITY_INSERT [dbo].[Student_Involvement] OFF
GO
