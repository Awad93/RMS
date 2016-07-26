USE [RMS_DB]
GO

CREATE TABLE [dbo].[Rank](
	[Rank_ID] [int] IDENTITY(1,1) NOT NULL,
	[Rank_Title] [nvarchar](1000) NULL,
	[Rank_Description] [nvarchar](1000) NULL,
	[Rank_Type] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Rank_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


SET IDENTITY_INSERT [dbo].[Rank] ON 




GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (1, N'A/C Laborer', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (2, N'A/C Mechanic', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (3, N'A/C Operator', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (4, N'A/C Technician', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (5, N'Accountant', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (6, N'Accountant Assistant', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (7, N'Accounting Auditor', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (8, N'Accounts Auditor C', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (9, N'Accounts Clerk', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (10, N'Actg. Director, Prep-year English Program', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (11, N'Acting Coordinator, Teaching and Learning Center', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (12, N'Acting Dir. Res. & Educ. Prog. Sup. Fund', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (13, N'Acting Director Constructions Maintenance', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (14, N'Acting Director, A/C Maintenance', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (15, N'Acting Director, Community Center', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (16, N'Acting Director, Construction Industry Institute', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (17, N'Acting Director, Medical Center', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (18, N'Acting Director, Safety', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (19, N'Acting Director, Study Grants and Scholarship', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (20, N'Acting Director, Telecommunications', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (21, N'Adjunct Associate Professor', NULL, N'Faculty')
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (22, N'Adjunct Professor', NULL, N'Faculty')
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (23, N'Administrative Assistant', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (24, N'Administrative Inspector', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (25, N'Administrative Research Assistant', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (26, N'Administrative Secretary', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (27, N'Admission and Registration Coordinator', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (28, N'Advisor', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (29, N'Air conditioning Technician', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (30, N'Airconditioners Operator', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (31, N'Arabic Typist', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (32, N'Arabic/English Typist', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (33, N'Architectural Engineer', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (34, N'Artist', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (35, N'Assistant A/C Technician', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (36, N'Assistant Accountant', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (37, N'Assistant Architectural Engineer', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (38, N'Assistant Auditor', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (39, N'Assistant Civil Engineer', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (40, N'Assistant Communication Technician', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (41, N'Assistant Comptroller', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (42, N'Assistant Confectioner', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (43, N'Assistant Cook', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (44, N'Assistant Cultural Researcher', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (45, N'Assistant Dean of Library Affairs', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (46, N'Assistant Dean of Student Affairs', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (47, N'Assistant Dietitian', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (48, N'Assistant Director General Admission', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (49, N'Assistant Director General, Administrative Affairs', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (50, N'Assistant Director of Telecommunications', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (51, N'Assistant Director, Cars and Equipment Maintenance', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (52, N'Assistant Director, Counseling & Advising Center', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (53, N'Assistant Director, Electrical Maintenance', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (54, N'Assistant Director, Faculty & Personnel Services', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (55, N'Assistant Director, Faculty Affairs', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (56, N'Assistant Director, Information Technology Center', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (57, N'Assistant Director, Investment Department', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (58, N'Assistant Director, Office of Planning & Quality', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (59, N'Assistant Director, Purchasing Department', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (60, N'Assistant Director, Student Activities', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (61, N'Assistant Electric Engineer', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (62, N'Assistant Employment Researcher', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (63, N'Assistant Engineer Computer', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (64, N'Assistant Engineer Mechanical', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (65, N'Assistant Heavy Duty Driver', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (66, N'Assistant Hygiene', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (67, N'Assistant Internal Auditor', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (68, N'Assistant Maintenance Technician', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (69, N'Assistant Manager of Academic Information Systems', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (70, N'Assistant Manger, Academic Computer Services', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (71, N'Assistant Manger, Computer Application Development', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (72, N'Assistant Manger, System Development', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (73, N'Assistant Mechanical Engineer', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (74, N'Assistant Professor', NULL, N'Faculty')
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (75, N'Assistant Programmer', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (76, N'Assistant Scientific Researcher', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (77, N'Assistant Social Researcher', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (78, N'Assistant Supervisor', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (79, N'Assistant System Analyst', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (80, N'Assistant Technician Equipment Operaator', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (81, N'Associate Dean', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (82, N'Associate Professor', NULL, N'Faculty')
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (83, N'Associate Provost for Public Policy', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (84, N'Asst. Dean for Prep. Year Affairs/ CASS', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (85, N'Asst. Dean for Skill Development / CASS', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (86, N'Audio Visual Technician', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (87, N'Auto Mechanic', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (88, N'Baker', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (89, N'Blacksmith', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (90, N'Book Store Supervisor', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (91, N'Budget Researcher', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (92, N'Budgeting and Formation Officer', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (93, N'Building Controller', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (94, N'Cabling Electrician', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (95, N'Calligrapher', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (96, N'Calligrapher and Draftsman', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (97, N'Cameraman', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (98, N'Carpenter', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (99, N'Carpenters Supervisor', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (100, N'Cashier', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (101, N'Catering Helper', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (102, N'Catering Supervisor', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (103, N'Chair Professor', NULL, N'Faculty')
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (104, N'Chair, Chemistry Department', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (105, N'Chairman Computer Engineering', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (106, N'Chairman, Aerospace Engineering Department', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (107, N'Chairman, Architecture', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (108, N'Chairman, Chemical Engineering', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (109, N'Chairman, Chemistry', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (110, N'Chairman, Civil Engineering', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (111, N'Chairman, Construction Engineering Management', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (112, N'Chairman, Earth Sciences', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (113, N'Chairman, Electrical Engineering', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (114, N'Chairman, Finance and Economics', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (115, N'Chairman, General Studies Dept.', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (116, N'Chairman, Information and Computer Science', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (117, N'Chairman, Islam and Arabic Study', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (118, N'Chairman, Management. and Marketing', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (119, N'Chairman, Mathematics Sciences', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (120, N'Chairman, Petroleum Engineering', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (121, N'Chairman, Physical Education', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (122, N'Chairman, Physics', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (123, N'Chairman, Systems Engineering', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (124, N'Chemical Engineer', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (125, N'Chemist', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (126, N'Chemistry Engineer', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (127, N'Civil Engineer', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (128, N'Cleaning Supervisor', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (129, N'Clerk', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (130, N'Coach', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (131, N'Co-Director, Psychology and Research in Education', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (132, N'Commitment Clerk', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (133, N'Communication Officer', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (134, N'Comptroller', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (135, N'Computer Engineer', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (136, N'Computer Graphics Specialist', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (137, N'Computer Laboratory Tech', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (138, N'Computer Maintenance Technician', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (139, N'Computer Operator', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (140, N'Computer Operator II', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (141, N'Computer Programmer', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (142, N'Confectioner', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (143, N'Construction Controller', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (144, N'Controller', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (145, N'Cook', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (146, N'Cook Assistant', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (147, N'Cooker', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (148, N'Coordinator', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (149, N'Coordinator, Student Affairs', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (150, N'Crane Driver', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (151, N'Curricula Programmer', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (152, N'Data Entry Clerk', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (153, N'Dean College of Computer Science and Engineering', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (154, N'Dean Hafer Al-Baten Community College', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (155, N'Dean of College of Applied and Supporting Studies', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (156, N'Dean of College of Engineering, Hafr Al-Batin', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (157, N'Dean University Honors Programs', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (158, N'Dean, Academic Development', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (159, N'Dean, Admission and Registration', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (160, N'Dean, Dammam Community College', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (161, N'Dean, Educational Services', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (162, N'Dean, Engineering Sciences', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (163, N'Dean, Environmental Design', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (164, N'Dean, Faculty and Personnel Affairs', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (165, N'Dean, Graduate Studies', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (166, N'Dean, Industrial Management', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (167, N'Dean, Library Affairs', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (168, N'Dean, Sciences', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (169, N'Dean, Scientific Research', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (170, N'Dean, Student Affairs', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (171, N'Dean, The Faculty of Science', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (172, N'Dentist', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (173, N'Dentist (Female)', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (174, N'Dentist Specialist', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (175, N'Dentor', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (176, N'Designer', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (177, N'Dietitian Specialist', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (178, N'Dietitian Technician', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (179, N'Direcotr, King''s Institute of Learning and Teaching', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (180, N'Director', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (181, N'Director Accounting', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (182, N'Director Book Store Department', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (183, N'Director Cars and Equipment Maintenance', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (184, N'Director Center, Engineer Research', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (185, N'Director Center, Environment and Water', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (186, N'Director Faculty and Personnel Services', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (187, N'Director General Project', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (188, N'Director General Projects and Maintenance', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (189, N'Director General Security and Safety', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (190, N'Director General, Administrative Affairs', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (191, N'Director General, Admission', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (192, N'Director General, Community Center', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (193, N'Director General, Faculty Affairs', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (194, N'Director General, Financial Affairs', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (195, N'Director General, Food Services', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (196, N'Director General, Housing and Office Services', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (197, N'Director General, Maintenance', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (198, N'Director General, Rector''s Office', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (199, N'Director General, Student Affairs', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (200, N'Director of Faculty & Organizational Development', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (201, N'Director of Information Center', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (202, N'Director of Maher Program', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (203, N'Director of Payroll and Wages', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (204, N'Director of Preparatory English Program', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (205, N'Director of Preparatory Year Program - MATH', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (206, N'Director Office Services Department', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (207, N'Director Programs Assessment Center', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (208, N'Director Social Services Department', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (209, N'Director Testing and Evaluation Center', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (210, N'Director, Admission Department', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (211, N'Director, Admission Office', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (212, N'Director, Agriculture Section', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (213, N'Director, Air condition Maintenance', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (214, N'Director, AJSE', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (215, N'Director, Alumni Department', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (216, N'Director, Alumni Office', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (217, N'Director, Budgeting', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (218, N'Director, Business Incubator', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (219, N'Director, Center for Research Support', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (220, N'Director, Ceremony', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (221, N'Director, Computer Design', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (222, N'Director, Contracts', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (223, N'Director, Coordination & Space Management', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (224, N'Director, Coordination and Follow-up', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (225, N'Director, Coordination Department', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (226, N'Director, Dean Office', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (227, N'Director, e-Learning Center', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (228, N'Director, English Language Department', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (229, N'Director, Faculty Affairs', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (230, N'Director, Faculty Housing', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (231, N'Director, Financial Department', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (232, N'Director, Handicapped Affairs Office', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (233, N'Director, Human Resources Department', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (234, N'Director, Information Technology Center', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (235, N'Director, Investment Department', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (236, N'Director, KFUPM Press', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (237, N'Director, Lidget Green, Inc.', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (238, N'Director, Local Purchasing', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (239, N'Director, Mail Office', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (240, N'Director, Mechanical Maintenance', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (241, N'Director, Public Relation', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (242, N'Director, Purchasing', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (243, N'Director, RI Personnel', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (244, N'Director, Security and Safety Unit', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (245, N'Director, Staff & Organization Development', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (246, N'Director, Staff Affairs', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (247, N'Director, Staff Promotions', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (248, N'Director, Store House Depart.', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (249, N'Director, Student Housing', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (250, N'Director, Student Record', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (251, N'Director, Student Union', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (252, N'Director, Supervisor Department', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (253, N'Director, Technical Affairs', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (254, N'Director, Transportation Department', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (255, N'Director, Utilities Section', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (256, N'Distinguished Professor of Management', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (257, N'Distinguished University Professor', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (258, N'Document Posting Clerk', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (259, N'Draftsman', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (260, N'Driver', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (261, N'Editor', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (262, N'Electric Technician', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (263, N'Electrical Engineer', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (264, N'Electrical Foreman', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (265, N'Electrical Laborer', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (266, N'Electrical Maintenance Supervisor', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (267, N'Electrician', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (268, N'Electronic Engineer', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (269, N'Electronic Technician', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (270, N'Emeritus Professor', NULL, N'Faculty')
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (271, N'Emiritus Professor', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (272, N'Employment Researcher', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (273, N'Employment Specialist', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (274, N'Engineer', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (275, N'Engineer I', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (276, N'Engineer II', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (277, N'Engineer, Computer', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (278, N'Engineering Support Supervisor', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (279, N'English Typist', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (280, N'Engraver', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (281, N'Equipment Maintenance Technician', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (282, N'Ex-Director of University Teaching Center', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (283, N'Executive Director Students Funds', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (284, N'Executive Secretary', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (285, N'Expeditor', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (286, N'Foreman', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (287, N'FT master student', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (288, N'Full time M.Sc', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (289, N'General Mechanic', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (290, N'General Supervisor, Services', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (291, N'Global Education Consultant', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (292, N'Graduate Assistant', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (293, N'Graduate Student', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (294, N'Graudate Assistant', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (295, N'Guard', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (296, N'Gynecologist', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (297, N'Hardware Engineer', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (298, N'Head, Craft Section', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (299, N'Head, Transportation Section', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (300, N'Heavy Duty Driver', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (301, N'Heavy Machine Driver', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (302, N'Housing Controller', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (303, N'Information Officer', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (304, N'Instructional Designer & Academic e-Learning Consultant', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (305, N'Instructor', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (306, N'Instrument Technician', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (307, N'Internal Auditor', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (308, N'Internist Physician', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (309, N'Inventory Clerk', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (310, N'Iron Mechanic', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (311, N'IT Support', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (312, N'Joint Professor', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (313, N'Lab Attendant', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (314, N'Lab Handler', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (315, N'Lab Laborer', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (316, N'Lab Specialist', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (317, N'Lab Technician', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (318, N'Lab. Attendant', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (319, N'Labor', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (320, N'Labor Controller', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (321, N'Labor Foreman', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (322, N'Laboratories Engineer', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (323, N'Laboratory Analysis', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (324, N'Laboratory Assistant', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (325, N'Laboratory Engineer', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (326, N'Laboratory Technician', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (327, N'Laborer', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (328, N'Lecturer', NULL, N'Faculty')
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (329, N'Lecturer B', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (330, N'Lecturer-B', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (331, N'Legal Researcher', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (332, N'Librarian', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (333, N'Librarian I', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (334, N'Libraries Researcher', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (335, N'Library Agent', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (336, N'Library Assistant', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (337, N'Library Specialist', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (338, N'Life Guard', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (339, N'Loader', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (340, N'Locksmith', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (341, N'Machine Operator', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (342, N'Machine Tool Operator', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (343, N'Machinist', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (344, N'Machinistvisor', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (345, N'Mail Distributor', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (346, N'Maintenance Coordinator', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (347, N'Maintenance Supervisor', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (348, N'Maintenance Technician', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (349, N'Male Nurse', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (350, N'Manager Academic Information System', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (351, N'Manager Administrative Information System', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (352, N'Manager, Academic Computer Service', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (353, N'Manager, Contract Administration Unit', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (354, N'Manager, Information & Communications Unit', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (355, N'Manager, Lending and Supporting Services', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (356, N'Manager, Marine Studies Section', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (357, N'Manager, Media Production Unit', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (358, N'Manager, Public Relations Unit', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (359, N'Manager, Reference and Information Services', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (360, N'Manager, Systems and Operation', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (361, N'Manager, Technical Services', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (362, N'Mason', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (363, N'Master Student', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (364, N'Mechanic', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (365, N'Mechanical Engineer', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (366, N'Mechanical Technician', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (367, N'Media Secretary', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (368, N'Medical Lab. Technician', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (369, N'Messenger', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (370, N'Monitor Services', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (371, N'Network Engineer', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (372, N'Nurse', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (373, N'Nursing Specialist', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (374, N'Office Boy', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (375, N'Office Machine Operator', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (376, N'Offset Technician', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (377, N'Operation Technician', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (378, N'Operator, Boiler Plant', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (379, N'Operator, Computer Machine', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (380, N'Ophthalmologist', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (381, N'Other', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (382, N'Otologist E.N.T.', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (383, N'Outreach Officer, Computer Science and Artificial Intelligence Laboratory', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (384, N'Painter', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (385, N'Part Time Faculty', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (386, N'Payroll Auditor', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (387, N'Pediatrician', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (388, N'Personnel Auditor', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (389, N'Personnel Researcher', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (390, N'Personnel Specialist', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (391, N'Pest Control Supervisor', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (392, N'Petroleum Engineer', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (393, N'Pharmacian', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (394, N'Pharmacist', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (395, N'Photography Technician', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (396, N'Physician / General Practitioner', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (397, N'Planting Supervisor', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (398, N'Plumber', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (399, N'Plumbers Supervisor', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (400, N'Post Doctoral Fellow', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (401, N'Post-Doctoral Fellow', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (402, N'Posting Clerk', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (403, N'Postman', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (404, N'Power House Mechanic', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (405, N'President & CEO, Tony Bates Associates Ltd', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (406, N'Press Technician', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (407, N'Printing Technician', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (408, N'Professional Consultant in Higher Education', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (409, N'Professor', NULL, N'Faculty')
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (410, N'Professor and Chair', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (411, N'Professor of Cooperative Learning', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (412, N'Professor of Education', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (413, N'Programmer', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (414, N'Public Relation Officer', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (415, N'Publication Specialist', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (416, N'Puncture Helper', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (417, N'Purchasing Agent', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (418, N'Purchasing Auditor', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (419, N'Purchasing Researcher', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (420, N'Purchasing Specialist', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (421, N'RA', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (422, N'Radiologist', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (423, N'Reception Officer', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (424, N'Reference Specialist', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (425, N'Registrar', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (426, N'Registration Supervisor', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (427, N'Research Assistance', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (428, N'Research Assistant', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (429, N'Research Assistant / Computer Technical', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (430, N'Research Associate / Chair', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (431, N'Research Engineer', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (432, N'Research Engineer I', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (433, N'Research Engineer II', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (434, N'Research Engineer III', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (435, N'Research Engineer-II', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (436, N'Research Professor in the Division of Mechanical Enginee', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (437, N'Research Scientist', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (438, N'Research Scientist I', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (439, N'Research Scientist II', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (440, N'Research Scientist III', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (441, N'Research Specialist III', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (442, N'Research Technician', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (443, N'Research Technician I', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (444, N'Research Technician II', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (445, N'Research Technician III', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (446, N'Researcher Administrative Development', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (447, N'Researcher, System', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (448, N'Resident Physician', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (449, N'Revenue Collecter Officer', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (450, N'Revenue Officer', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (451, N'Safety Engineer', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (452, N'Safety Labor', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (453, N'Safety Laborer', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (454, N'Scientific Researcher II', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (455, N'Scientist / Researcher', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (456, N'Scientist I', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (457, N'Scientist II', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (458, N'Scientist III', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (459, N'Scientist IV', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (460, N'Secretary', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (461, N'Secretary General', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (462, N'Security Guard', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (463, N'Security Supervisor', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (464, N'Security Supervisor Assistant', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (465, N'Senior Engineer', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (466, N'Senior Research Engineer', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (467, N'Senior Research Technical', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (468, N'Senior Research Technician', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (469, N'Services Laborer', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (470, N'Services Superintendent', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (471, N'Silk Screen Technician', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (472, N'Social Controller', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (473, N'Social Researcher', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (474, N'Social Supervisor', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (475, N'Specialist I', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (476, N'Specialist II', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (477, N'Specialist III', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (478, N'Sporting Supervisor', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (479, N'Sports coach', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (480, N'Staff Nurse', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (481, N'Storage Controller', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (482, N'Store Clerk', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (483, N'Storehouse Keeper', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (484, N'Storehouse Labor', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (485, N'Storekeeper', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (486, N'Stripping Technician', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (487, N'Student', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (488, N'Supervisor', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (489, N'Supervisor Engineer', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (490, N'Supervisor Technician, Maintenance', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (491, N'Supervisor, Dining Hall', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (492, N'Supervisor, Employees Relations', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (493, N'Supervisor, Employment Unit', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (494, N'Supervisor, Environmental Health', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (495, N'Supervisor, Laboratory Technicians', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (496, N'Supervisor, Security and Safety', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (497, N'Supervisor, Security Unit', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (498, N'Supervisor, Swimming Pool', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (499, N'Supervisor, University Colleges in Hafr Al-Batin', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (500, N'Supervisor, Utilities', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (501, N'Supervisor, Workshop', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (502, N'Supervisor-Reception', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (503, N'Swimming Coach', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (504, N'System Analyst', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (505, N'System Analyst And Design', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (506, N'System Engineer', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (507, N'System Researcher', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (508, N'Systems Analyst', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (509, N'T. Jerome Holleran Professor of Business Ethics and Social Responsibility', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (510, N'Teacher', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (511, N'Technical Research Assistant', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (512, N'Technician', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (513, N'Technician Nurse', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (514, N'Technician, A/C and Cooling', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (515, N'Technician, Air Conditioning and Cooling', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (516, N'Technician, Audio Visual', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (517, N'Technician, Communication', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (518, N'Technician, Equipment Operator', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (519, N'Technician, Medical Instrument', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (520, N'Technician, Office Machine', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (521, N'Technician, Telecommunication Operating', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (522, N'Technician-Computer Lab', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (523, N'Telecom Operator', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (524, N'Telecommunication Engineer', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (525, N'Telephone Technician', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (526, N'The Director of Biggio Center for the Enhancement of Teaching and Learning', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (527, N'Tires Technician', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (528, N'Training Section Supervisor', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (529, N'Translator', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (530, N'Transportation Clerk', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (531, N'Typist', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (532, N'University Rector', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (533, N'Vice Rector for Academic Affairs', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (534, N'Vice Rector for Applied Researches', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (535, N'Vice-Proveost of Windsor University', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (536, N'Visiting Assistant Professor', NULL, N'Faculty')
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (537, N'Visiting Associate Professor', NULL, N'Faculty')
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (538, N'Visiting Professor', NULL, N'Faculty')
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (539, N'Waiter', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (540, N'Welder', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (541, N'Workshop Supervisor', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (542, N'Workshop Technician', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (543, N'X-Ray Technician', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (544, N'Professor', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (545, N'Associate Professor', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (546, N'Assistant Professor', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (547, N'Instructor', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (548, N'Lecturer', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (549, N'Other', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (550, N'Senior Engineer', NULL, NULL)
GO
INSERT [dbo].[Rank] ([Rank_ID], [Rank_Title], [Rank_Description], [Rank_Type]) VALUES (551, N'Engineer', NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Rank] OFF
GO