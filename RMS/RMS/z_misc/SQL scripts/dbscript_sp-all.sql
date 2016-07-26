
/****** Object:  StoredProcedure [dbo].[sp_rep_GetBooksAll]    Script Date: 7/21/2016 10:26:27 AM ******/

CREATE PROCEDURE [dbo].[sp_rep_GetBooksAll]
AS
BEGIN

	SET NOCOUNT ON;

	SELECT * FROM Book_Authored
	ORDER BY Publication_Year DESC, Book_Title;
END
GO

/* *********************************************************************************************** */
/* *********************************************************************************************** */

/****** Object:  StoredProcedure [dbo].[sp_rep_GetBooksByCollege]    Script Date: 7/21/2016 10:26:27 AM ******/

CREATE PROCEDURE [dbo].[sp_rep_GetBooksByCollege] 
	@college_code varchar(10) = null
AS
BEGIN

	SET NOCOUNT ON;

	SELECT DISTINCT B.* FROM Researcher R
	JOIN Department D on(D.Department_Code = R.Department_Code)
	JOIN Book_Authored_Author A on(A.KFUPMID = R.KFUPMID)
	JOIN Book_Authored B on(B.Book_Authored_ID = A.Book_Authored_ID)
	WHERE D.Parent_Department_Code = isnull(@college_code, D.Parent_Department_Code)
	ORDER BY Book_Title
END
GO

/* *********************************************************************************************** */
/* *********************************************************************************************** */

/****** Object:  StoredProcedure [dbo].[sp_rep_GetBooksByDepartment]    Script Date: 7/21/2016 10:26:27 AM ******/

CREATE PROCEDURE [dbo].[sp_rep_GetBooksByDepartment] 
	@dept_code varchar(10) = null
AS
BEGIN
	SET NOCOUNT ON;

	SELECT DISTINCT B.* FROM Researcher R
	JOIN Book_Authored_Author A on(A.KFUPMID = R.KFUPMID)
	JOIN Book_Authored B on(B.Book_Authored_ID = A.Book_Authored_ID)
	WHERE R.Department_Code = isnull(@dept_code, R.Department_Code)
	ORDER BY Book_Title
END
GO

/* *********************************************************************************************** */
/* *********************************************************************************************** */

/****** Object:  StoredProcedure [dbo].[sp_rep_GetBooksByFaculty]    Script Date: 7/21/2016 10:26:27 AM ******/

CREATE PROCEDURE [dbo].[sp_rep_GetBooksByFaculty] 
	@id int = null
AS
BEGIN
	SET NOCOUNT ON;

	SELECT * FROM Book_Authored_Author A
	JOIN Book_Authored B on(A.Book_Authored_ID = B.Book_Authored_ID)
	WHERE A.KFUPMID = isnull(@id, KFUPMID)
END
GO

/* *********************************************************************************************** */
/* *********************************************************************************************** */


/****** Object:  StoredProcedure [dbo].[sp_rep_GetCitationStatsForFacultyAllCollegesByYear]    Script Date: 7/21/2016 10:26:27 AM ******/

-- sp_rep_GetCitationStatsForFacultyAllCollegesByYear

CREATE PROCEDURE [dbo].[sp_rep_GetCitationStatsForFacultyAllCollegesByYear] 
	@start_year int = null,
	@end_year int = null
		
	AS
BEGIN
	SET NOCOUNT ON;

	declare @cnt_year  varchar(10) = isnull(@start_year,2006),	
		@query varchar(max) = ''

	set @end_year = isnull(@end_year, YEAR(GETDATE()))	

	set @query = 
	'select r.kfupmid, full_name'
	while @cnt_year <= @end_year 
	begin

	set @query +=' 
	,isnull(sum(case when Publication_Year = ' + @cnt_year + ' then Time_Cited end),0) y' + @cnt_year	
	set @cnt_year = @cnt_year + 1
	end
	
	set @query += ' 	
	, r.department_code 
	from researcher r
	join Publication_ISI_Author a
	on a.kfupmid = r.KFUPMID
	join Publication_ISI p
	on p.WOS_Number = a.WOS_Number
	group by r.KFUPMID, full_name, r.department_code
	'
exec (@query)
END
GO

/* *********************************************************************************************** */
/* *********************************************************************************************** */

/****** Object:  StoredProcedure [dbo].[sp_rep_GetCitationStatsForFacultySingleCollegeByYear]    Script Date: 7/21/2016 10:26:27 AM ******/

-- sp_rep_GetCitationStatsForFacultySingleCollegeByYear 'CCSE' 

CREATE PROCEDURE [dbo].[sp_rep_GetCitationStatsForFacultySingleCollegeByYear] 
	@college_code varchar(10) = null,
	@start_year int = null,
	@end_year int = null
		
	AS
BEGIN
	SET NOCOUNT ON;

	declare @cnt_year  varchar(10) = isnull(@start_year,2006),	
		@query varchar(max) = ''

	set @end_year = isnull(@end_year, YEAR(GETDATE()))
	
	set @query = 
	'select r.kfupmid, full_name'
	while @cnt_year <= @end_year 
	begin

	set @query +=' 
	,isnull(sum(case when Publication_Year = ' + @cnt_year + ' then Time_Cited end),0) y' + @cnt_year	
	set @cnt_year = @cnt_year + 1
	end
	
	set @query += ' 	
	, r.department_code 
	from researcher r	
	join department d 
	on d.department_code = r.department_code
	join Publication_ISI_Author a
	on a.kfupmid = r.KFUPMID
	join Publication_ISI p
	on p.WOS_Number = a.WOS_Number
	where d.parent_department_code = ''' + @college_code + '''
	group by r.KFUPMID, full_name, r.department_code	
	'

exec (@query)
END
GO


/* *********************************************************************************************** */
/* *********************************************************************************************** */

/****** Object:  StoredProcedure [dbo].[sp_rep_GetCitationStatsForFacultySingleDepartmentByYear]    Script Date: 7/21/2016 10:26:27 AM ******/

-- sp_rep_GetCitationStatsForFacultySingleDepartmentByYear 'SE' 

CREATE PROCEDURE [dbo].[sp_rep_GetCitationStatsForFacultySingleDepartmentByYear] 
	@dept_code varchar(10) = null,
	@start_year int = null,
	@end_year int = null
		
	AS
BEGIN

	SET NOCOUNT ON;

	declare @cnt_year  varchar(10) = isnull(@start_year,2006),	
		@query varchar(max) = ''

	set @end_year = isnull(@end_year, YEAR(GETDATE()))
	

	set @query = 
	'select r.kfupmid, full_name'
	while @cnt_year <= @end_year 
	begin

	set @query +=' 
	,isnull(sum(case when Publication_Year = ' + @cnt_year + ' then Time_Cited end),0) y' + @cnt_year	
	set @cnt_year = @cnt_year + 1
	end
	
	set @query += ' 	
	from researcher r	
	join Publication_ISI_Author a
	on a.kfupmid = r.KFUPMID
	join Publication_ISI p
	on p.WOS_Number = a.WOS_Number
	where r.department_code = ''' + @dept_code + '''
	group by r.KFUPMID, full_name
	'

exec (@query)
END
GO


/* *********************************************************************************************** */
/* *********************************************************************************************** */

/****** Object:  StoredProcedure [dbo].[sp_rep_GetCitationStatsForISIPublicationsForAllColleges]    Script Date: 7/21/2016 10:26:27 AM ******/

CREATE PROCEDURE [dbo].[sp_rep_GetCitationStatsForISIPublicationsForAllColleges] 
@fromYear int = null,
@toYear int = null,
@doctype int = null

AS
BEGIN
	select distinct publication_year, sum(Time_Cited) as Time_Cited
	from Publication_ISI pubISI
	where 1=1 
	and Publication_Year >= isnull(@fromYear,2006)
	and Publication_Year <= isnull(@toYear, YEAR(getdate()))
	group by Publication_Year
	order by Publication_Year
END
GO

/* *********************************************************************************************** */
/* *********************************************************************************************** */

/****** Object:  StoredProcedure [dbo].[sp_rep_GetCitationStatsForISIPublicationsForSingleCollege]    Script Date: 7/21/2016 10:26:27 AM ******/

-- [sp_rep_GetCitationStatsForISIPublicationsForSingleCollege] 'CCSE', 2008, 2010

CREATE  procedure [dbo].[sp_rep_GetCitationStatsForISIPublicationsForSingleCollege]

@college_code varchar(20) ,
@fromYear int = null,
@toYear int = null,
@doctype int = null

as

select distinct publication_year, sum(Time_Cited) as Time_Cited,d.Parent_Department_Code
from Publication_ISI pubISI
inner join Publication_ISI_Author pubISIAuth on pubISI.WOS_Number = pubISIAuth.WOS_Number
inner join Researcher r on r.KFUPMID = pubISIAuth.KFUPMID
inner join Department d on d.Department_Code = r.Department_Code
where 1=1 
and Publication_Year >= isnull(@fromYear,2006)
and Publication_Year <= isnull(@toYear, YEAR(getdate()))
and d.Parent_Department_Code = @college_code
group by Publication_Year, d.Parent_Department_Code
order by Publication_Year

GO


/* *********************************************************************************************** */
/* *********************************************************************************************** */

/****** Object:  StoredProcedure [dbo].[sp_rep_GetCitationStatsForISIPublicationsForSingleDepartment]    Script Date: 7/21/2016 10:26:27 AM ******/

-- [sp_rep_GetCitationStatsForISIPublicationsForSingleDepartment] 'CS', 2008, 2010

create  procedure [dbo].[sp_rep_GetCitationStatsForISIPublicationsForSingleDepartment]

@dept_code varchar(20) ,
@fromYear int = null,
@toYear int = null,
@doctype int = null

as

select distinct publication_year, sum(Time_Cited) as Time_Cited,d.Department_Code
from Publication_ISI pubISI
inner join Publication_ISI_Author pubISIAuth on pubISI.WOS_Number = pubISIAuth.WOS_Number
inner join Researcher r on r.KFUPMID = pubISIAuth.KFUPMID
inner join Department d on d.Department_Code = r.Department_Code
where 1=1 
and Publication_Year >= isnull(@fromYear,2006)
and Publication_Year <= isnull(@toYear, YEAR(getdate()))
and d.Department_Code = @dept_code
group by Publication_Year, d.Department_Code
order by Publication_Year

GO


/* *********************************************************************************************** */
/* *********************************************************************************************** */

/****** Object:  StoredProcedure [dbo].[sp_rep_GetCitationStatsForStudentInvolvementForSingleDepartment]    Script Date: 7/21/2016 10:26:27 AM ******/

-- [sp_rep_GetPublicationStatsForISIPublicationsForAllDocTypesSingleDepartmentAllYears] 'ICS'  
-- sp_rep_GetPublicationStatsForStudentInvolvementForSingleDepartment 'ICS' 
create  procedure [dbo].[sp_rep_GetCitationStatsForStudentInvolvementForSingleDepartment]
@dept_code varchar(20) ,
@fromYear int = null,
@toYear int = null,
@doctype int = null
 
AS

Set @doctype = 1 --All

select distinct publication_year, sum(Time_Cited) as Citation_Count,r.Department_Code
from Publication_ISI pubISI
inner join Publication_ISI_Author pubISIAuth on pubISI.WOS_Number = pubISIAuth.WOS_Number
inner join Researcher r on r.KFUPMID = pubISIAuth.KFUPMID
inner join GraduateStudent g on g.AdvisorID = r.KFUPMID
where 1=1 
and Publication_Year >= isnull(@fromYear,2006)
and Publication_Year <= isnull(@toYear, YEAR(getdate()))
and r.Department_Code = @dept_code

group by Publication_Year, r.Department_Code
order by Publication_Year

GO


/* *********************************************************************************************** */
/* *********************************************************************************************** */

/****** Object:  StoredProcedure [dbo].[sp_rep_GetCollegesAll]    Script Date: 7/21/2016 10:26:27 AM ******/

CREATE PROCEDURE [dbo].[sp_rep_GetCollegesAll]
	-- Add the parameters for the stored procedure here
AS
BEGIN

	SET NOCOUNT ON;

	SELECT * FROM Department
	WHERE Department_Type='CLG'
	ORDER BY Department_Name ASC
END
GO

/* *********************************************************************************************** */
/* *********************************************************************************************** */

/****** Object:  StoredProcedure [dbo].[sp_rep_GetConferencesAll]    Script Date: 7/21/2016 10:26:27 AM ******/

CREATE PROCEDURE [dbo].[sp_rep_GetConferencesAll]
AS
BEGIN
	SET NOCOUNT ON;

	SELECT * FROM Conference
	ORDER BY Year DESC, Conference_Name;
END
GO


/* *********************************************************************************************** */
/* *********************************************************************************************** */

/****** Object:  StoredProcedure [dbo].[sp_rep_GetConferencesByCollege]    Script Date: 7/21/2016 10:26:27 AM ******/

-- sp_rep_GetConferencesByCollege 

CREATE PROCEDURE [dbo].[sp_rep_GetConferencesByCollege]
	@college_code varchar(10) = null
AS
BEGIN
	SET NOCOUNT ON;

	SELECT C.* FROM Conference C
	JOIN Researcher R ON C.KFUPMID = R.KFUPMID
	JOIN Department D ON R.Department_Code = D.Department_Code
	WHERE D.Parent_Department_Code = ISNULL(@college_code, D.Parent_Department_Code)
	ORDER BY Year DESC, Conference_Name;
END
GO


/* *********************************************************************************************** */
/* *********************************************************************************************** */

/****** Object:  StoredProcedure [dbo].[sp_rep_GetConferencesByDepartment]    Script Date: 7/21/2016 10:26:27 AM ******/

CREATE PROCEDURE [dbo].[sp_rep_GetConferencesByDepartment]
	@dept_code varchar(10) = null
AS
BEGIN
	SET NOCOUNT ON;

	SELECT C.* FROM Conference C
	JOIN Researcher R ON C.KFUPMID = R.KFUPMID	
	WHERE R.Department_Code = ISNULL(@dept_code, R.Department_Code)
	ORDER BY Year DESC, Conference_Name;
END
GO


/* *********************************************************************************************** */
/* *********************************************************************************************** */

/****** Object:  StoredProcedure [dbo].[sp_rep_GetConferencesByFaculty]    Script Date: 7/21/2016 10:26:27 AM ******/

CREATE PROCEDURE [dbo].[sp_rep_GetConferencesByFaculty]
	@id int = null
AS
BEGIN
	SET NOCOUNT ON;

	SELECT C.* FROM Conference C
	WHERE KFUPMID = isnull(@id, KFUPMID)
	ORDER BY Year DESC, Conference_Name;
END
GO

/* *********************************************************************************************** */
/* *********************************************************************************************** */

/****** Object:  StoredProcedure [dbo].[sp_rep_GetDepartmentsByCollege]    Script Date: 7/21/2016 10:26:27 AM ******/

CREATE PROCEDURE [dbo].[sp_rep_GetDepartmentsByCollege]
	-- Add the parameters for the stored procedure here
	@college_code varchar(10) = null
AS
BEGIN
	SET NOCOUNT ON;

	SELECT * FROM Department
	WHERE Parent_Department_Code = isnull(@college_code, Parent_Department_Code)
	ORDER BY Department_Name ASC
END
GO


/* *********************************************************************************************** */
/* *********************************************************************************************** */

/****** Object:  StoredProcedure [dbo].[sp_rep_GetDistinctISIDocumentTypes]    Script Date: 7/21/2016 10:26:27 AM ******/

CREATE procedure  [dbo].[sp_rep_GetDistinctISIDocumentTypes]
 
as
 
select Distinct Document_Type
from Publication_ISI
order by Document_Type asc

GO


/* *********************************************************************************************** */
/* *********************************************************************************************** */

/****** Object:  StoredProcedure [dbo].[sp_rep_GetFacultyAll]    Script Date: 7/21/2016 10:26:27 AM ******/

CREATE PROCEDURE [dbo].[sp_rep_GetFacultyAll]
	@first_char varchar(1) = null
AS
BEGIN
	SET @first_char = coalesce(@first_char,'');

	SELECT * FROM Researcher
	WHERE Last_Name LIKE ''+@first_char+'%'
	ORDER BY Full_Name
END
GO

/* *********************************************************************************************** */
/* *********************************************************************************************** */

/****** Object:  StoredProcedure [dbo].[sp_rep_GetFacultyByCollege]    Script Date: 7/21/2016 10:26:27 AM ******/

CREATE PROCEDURE [dbo].[sp_rep_GetFacultyByCollege] 
	@college_code varchar(10) = null,
	@first_char varchar(1) = null
AS
BEGIN
	SET NOCOUNT ON
	SET @first_char = coalesce(@first_char,'');

	SELECT R.* FROM Researcher R
	JOIN Department D on(R.Department_Code = D.Department_Code)
	WHERE Parent_Department_Code = isnull(@college_code, Parent_Department_Code)
	AND Last_Name LIKE ''+@first_char+'%'
END
GO


/* *********************************************************************************************** */
/* *********************************************************************************************** */

/****** Object:  StoredProcedure [dbo].[sp_rep_GetFacultyByDepartment]    Script Date: 7/21/2016 10:26:27 AM ******/

CREATE PROCEDURE [dbo].[sp_rep_GetFacultyByDepartment] 
	@dept_code varchar(10) = null,
	@first_char varchar(1) = null
AS
BEGIN

	SET NOCOUNT ON
	SET @first_char = coalesce(@first_char,'');

	SELECT * FROM Researcher
	WHERE Department_Code = isnull(@dept_code, Department_Code)
	AND Last_Name LIKE ''+@first_char+'%'
END
GO

/* *********************************************************************************************** */
/* *********************************************************************************************** */

/****** Object:  StoredProcedure [dbo].[sp_rep_GetFacultyByName]    Script Date: 7/21/2016 10:26:27 AM ******/

CREATE PROCEDURE [dbo].[sp_rep_GetFacultyByName] 
	@searched varchar(255) = null	
AS
BEGIN

	SET NOCOUNT ON;

	SELECT * FROM Researcher
	WHERE Full_Name LIKE '%' + @searched + '%'
	OR First_Name LIKE '%' + @searched + '%'
	OR Middle_Name LIKE '%' + @searched + '%'
	OR Last_Name LIKE '%' + @searched + '%'
END
GO


/* *********************************************************************************************** */
/* *********************************************************************************************** */

/****** Object:  StoredProcedure [dbo].[sp_rep_GetFacultyByNameAndCollege]    Script Date: 7/21/2016 10:26:27 AM ******/

CREATE PROCEDURE [dbo].[sp_rep_GetFacultyByNameAndCollege] 
	@college_code varchar(10) = null,
	@searched varchar(255) = null
AS
BEGIN

	SET NOCOUNT ON;

	SELECT R.* FROM Researcher R
	JOIN Department D ON(D.Department_Code = R.Department_Code)
	WHERE D.Parent_Department_Code = isnull(@college_code, D.Parent_Department_Code)
	AND (
	Full_Name LIKE '%' + @searched + '%'
	OR First_Name LIKE '%' + @searched + '%'
	OR Middle_Name LIKE '%' + @searched + '%'
	OR Last_Name LIKE '%' + @searched + '%'
	)
END
GO


/* *********************************************************************************************** */
/* *********************************************************************************************** */

/****** Object:  StoredProcedure [dbo].[sp_rep_GetISIPublicationsAll]    Script Date: 7/21/2016 10:26:27 AM ******/

CREATE PROCEDURE [dbo].[sp_rep_GetISIPublicationsAll]
@docType int = null
AS
BEGIN

       SET NOCOUNT ON;
 
       if(@docType is null)
             SET @docType = 0
 
       SELECT DISTINCT P.* FROM Publication_ISI P
       WHERE
       (@doctype= 0 and P.Document_Type = P.Document_Type
         OR @doctype= 1 and P.Document_Type in ('Article; Proceedings Paper','Article')    
         OR @doctype= 2 and P.Document_Type in ('Proceedings Paper')
       )
       AND Publication_Year >= 2006
       ORDER BY P.Publication_Year, Paper_Title
END
GO

/* *********************************************************************************************** */
/* *********************************************************************************************** */

/****** Object:  StoredProcedure [dbo].[sp_rep_GetISIPublicationsAllCollegesByDocType]    Script Date: 7/21/2016 10:26:27 AM ******/

-- sp_rep_GetISIPublicationsAllCollegesByDocType 0 , 2008 , 2014
 
create procedure [dbo].[sp_rep_GetISIPublicationsAllCollegesByDocType]
@doctype int = null,
@fromYear int = null,
@toYear int = null
 
AS
 
select *
from Publication_ISI pubISI
where 1=1 
and Publication_Year >= isnull(@fromYear,2006)
and Publication_Year <= isnull(@toYear, YEAR(getdate()))
and
       (@doctype= 0 and pubISI.Document_Type = pubISI.Document_Type
         OR @doctype= 1 and pubISI.Document_Type in ('Article; Proceedings Paper','Article')    
         OR @doctype= 2 and pubISI.Document_Type in ('Proceedings Paper')
       )

GO


/* *********************************************************************************************** */
/* *********************************************************************************************** */


/****** Object:  StoredProcedure [dbo].[sp_rep_GetISIPublicationsForSingleCollegeByDocType]    Script Date: 7/21/2016 10:26:27 AM ******/

-- [sp_rep_GetISIPublicationsForSingleCollegeByDocType] 'cs', 1, 2000, 2016
 
CREATE  procedure [dbo].[sp_rep_GetISIPublicationsForSingleCollegeByDocType]
 
@college_code varchar(20) ,
@doctype int = null,
@fromYear int = null,
@toYear int = null
AS
 
select *
from Publication_ISI pubISI
inner join Publication_ISI_Author pubISIAuth on pubISI.WOS_Number = pubISIAuth.WOS_Number
inner join Researcher r on r.KFUPMID = pubISIAuth.KFUPMID
inner join Department d on d.Department_Code = r.Department_Code
where 1=1
and Publication_Year >= isnull(@fromYear,2006)
and Publication_Year <= isnull(@toYear, YEAR(getdate()))
and d.Parent_Department_Code = @college_code
and
       (@doctype= 0 and pubISI.Document_Type = pubISI.Document_Type
         OR @doctype= 1 and pubISI.Document_Type in ('Article; Proceedings Paper','Article')    
         OR @doctype= 2 and pubISI.Document_Type in ('Proceedings Paper')
       )
order by pubISI.Publication_Year, pubISI.Paper_Title

GO

/* *********************************************************************************************** */
/* *********************************************************************************************** */

/****** Object:  StoredProcedure [dbo].[sp_rep_GetISIPublicationsByDepartment]    Script Date: 7/21/2016 10:26:27 AM ******/


/****** Object:  StoredProcedure [dbo].[sp_rep_GetISIPublicationsForSingleDepartmentByDocType]    Script Date: 7/21/2016 10:26:27 AM ******/

-- [sp_rep_GetISIPublicationsForSingleDepartmentByDocType] 'SE', 0, 2000 , 2016
 
CREATE  procedure [dbo].[sp_rep_GetISIPublicationsForSingleDepartmentByDocType]
 
@dept_code varchar(20),
@doctype int = null,
@fromYear int = null,
@toYear int = null
 
AS
 
select *
from Publication_ISI pubISI
inner join Publication_ISI_Author pubISIAuth on pubISI.WOS_Number = pubISIAuth.WOS_Number
inner join Researcher r on r.KFUPMID = pubISIAuth.KFUPMID
inner join Department d on d.Department_Code = r.Department_Code
where 1=1
and Publication_Year >= isnull(@fromYear,2006)
and Publication_Year <= isnull(@toYear, YEAR(getdate()))
and d.Department_Code = @dept_code
and
       (@doctype= 0 and pubISI.Document_Type = pubISI.Document_Type
         OR @doctype= 1 and pubISI.Document_Type in ('Article; Proceedings Paper','Article')    
         OR @doctype= 2 and pubISI.Document_Type in ('Proceedings Paper')
       )     
order by pubISI.Publication_Year, pubISI.Paper_Title
 GO
 

/* *********************************************************************************************** */
/* *********************************************************************************************** */

/****** Object:  StoredProcedure [dbo].[sp_rep_GetNonISIPublicationsAll]    Script Date: 7/21/2016 11:13:16 AM ******/

-- [sp_rep_GetNonISIPublicationsAll] 0
-- [sp_rep_GetNonISIPublicationsAll] 1
CREATE PROCEDURE [dbo].[sp_rep_GetNonISIPublicationsAll] 
@Approved int = null
	-- Add the parameters for the stored procedure here	
AS
BEGIN

	SET NOCOUNT ON;

	SELECT DISTINCT 
	[Publication_NonISI_ID]
      ,[KFUPMID]
      ,isnull([DOI],'') as doi
      ,[Authors]
      ,[Paper_Title]
      ,[Source]
      ,[Publication_Year]
      ,[Approved]
      ,[isCorrespondingAuthor]
	FROM Publication_NonISI P
	WHERE Approved = ISNULL(@Approved, Approved)
	ORDER BY P.Publication_Year, Paper_Title
END
GO

/* *********************************************************************************************** */
/* *********************************************************************************************** */

/****** Object:  StoredProcedure [dbo].[sp_rep_GetNonISIPublicationsByCollege]    Script Date: 7/21/2016 11:13:46 AM ******/

-- [sp_rep_GetNonISIPublicationsByCollege] 'ccse', 0, 2006,2014

-- =============================================
CREATE PROCEDURE [dbo].[sp_rep_GetNonISIPublicationsByCollege] 
	@college_code varchar(10) = null,
	@Approved int = null,
	@fromyear int = null,
	@toyear int = null
AS
BEGIN

	SET NOCOUNT ON;

	SELECT DISTINCT P.* FROM Researcher R
	JOIN Department D on(D.Department_Code = R.Department_Code)
	JOIN Publication_NonISI_Author A on(A.KFUPMID = R.KFUPMID)
	JOIN Publication_NonISI P on(P.Publication_NonISI_ID = A.Publication_NonISI_ID)
	WHERE D.Parent_Department_Code = ISNULL(@college_code, D.Parent_Department_Code)
	AND P.Approved = ISNULL(@Approved, P.Approved)
	and p.Publication_Year >= ISNULL(@fromyear,2006)
	and p.Publication_Year <= ISNULL(@toyear,YEAR(GETDATE()))
	ORDER BY Publication_Year DESC, Paper_Title ASC
END

GO

/* *********************************************************************************************** */
/* *********************************************************************************************** */

/****** Object:  StoredProcedure [dbo].[sp_rep_GetNonISIPublicationsByDepartment]    Script Date: 7/21/2016 11:14:11 AM ******/

CREATE PROCEDURE [dbo].[sp_rep_GetNonISIPublicationsByDepartment] 

	@dept_code varchar(10) = null,
	@Approved int = null,
	@fromyear int = null,
	@toyear int = null
AS
BEGIN

	SET NOCOUNT ON;

	SELECT DISTINCT P.* FROM Researcher R	
	JOIN Publication_NonISI_Author A on(A.KFUPMID = R.KFUPMID)
	JOIN Publication_NonISI P on(P.Publication_NonISI_ID = A.Publication_NonISI_ID)
	WHERE R.Department_Code = isnull(@dept_code, R.Department_Code)
	AND P.Approved = ISNULL(@Approved, P.Approved)
	and p.Publication_Year >= ISNULL(@fromyear,2006)
	and p.Publication_Year <= ISNULL(@toyear,YEAR(GETDATE()))
	ORDER BY Publication_Year DESC, Paper_Title ASC
END
GO


/* *********************************************************************************************** */
/* *********************************************************************************************** */

USE [RMS_DB]
GO
/****** Object:  StoredProcedure [dbo].[sp_rep_GetNonISIPublicationsByFaculty]    Script Date: 7/21/2016 11:15:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_rep_GetNonISIPublicationsByFaculty] 
	-- Add the parameters for the stored procedure here
	@id int = null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT DISTINCT P.* FROM Publication_NonISI_Author A
	JOIN Publication_NonISI P on(P.Publication_NonISI_ID = A.Publication_NonISI_ID)
	Join Researcher r on a.KFUPMID = r.KFUPMID
	WHERE A.KFUPMID = isnull(@id, A.KFUPMID)
	AND  r.Status = 'Active'
	ORDER BY P.Publication_Year
END
GO

/* *********************************************************************************************** */
/* *********************************************************************************************** */

/****** Object:  StoredProcedure [dbo].[sp_rep_GetPatentsIssuedAll]    Script Date: 7/21/2016 10:26:28 AM ******/

CREATE PROCEDURE [dbo].[sp_rep_GetPatentsIssuedAll] 
AS
BEGIN

	SET NOCOUNT ON;

	SELECT * FROM Patent_Issued
	ORDER BY Year_Of_Issue
END
GO


/* *********************************************************************************************** */
/* *********************************************************************************************** */

/****** Object:  StoredProcedure [dbo].[sp_rep_GetPatentsIssuedByCollege]    Script Date: 7/21/2016 10:26:28 AM ******/

CREATE PROCEDURE [dbo].[sp_rep_GetPatentsIssuedByCollege] 
	@college_code varchar(10) = null
AS
BEGIN

	SET NOCOUNT ON;

	SELECT P.* FROM Patent_Issued P
	JOIN Patent_Issued_Author A ON A.Patent_Issued_ID = P.Patent_Issued_ID
	JOIN Researcher R ON R.KFUPMID = A.KFUPMID
	JOIN Department D ON D.Department_Code = R.Department_Code
	WHERE D.Parent_Department_Code = ISNULL(@college_code, D.Parent_Department_Code)
END
GO


/* *********************************************************************************************** */
/* *********************************************************************************************** */

/****** Object:  StoredProcedure [dbo].[sp_rep_GetPatentsIssuedByDepartment]    Script Date: 7/21/2016 10:26:28 AM ******/

CREATE PROCEDURE [dbo].[sp_rep_GetPatentsIssuedByDepartment] 
	@dept_code varchar(10) = null
AS
BEGIN

	SET NOCOUNT ON;

	SELECT P.* FROM Patent_Issued P
	JOIN Patent_Issued_Author A ON A.Patent_Issued_ID = P.Patent_Issued_ID
	JOIN Researcher R ON R.KFUPMID = A.KFUPMID
	WHERE R.Department_Code = ISNULL(@dept_code, R.Department_Code)
END
GO


/* *********************************************************************************************** */
/* *********************************************************************************************** */

/****** Object:  StoredProcedure [dbo].[sp_rep_GetPatentsIssuedByFaculty]    Script Date: 7/21/2016 10:26:28 AM ******/

CREATE PROCEDURE [dbo].[sp_rep_GetPatentsIssuedByFaculty] 
	@id int = null
AS
BEGIN

	SET NOCOUNT ON;

	SELECT P.* FROM Patent_Issued P
	JOIN Patent_Issued_Author A ON A.Patent_Issued_ID = P.Patent_Issued_ID
	JOIN Researcher R on A.KFUPMID = R.KFUPMID
	WHERE A.KFUPMID = isnull(@id, A.KFUPMID)
	AND R.Status='Active'
END

GO


/* *********************************************************************************************** */
/* *********************************************************************************************** */

/****** Object:  StoredProcedure [dbo].[sp_rep_GetPubStatsForISIPublicationsAllCollegesAllYears]    Script Date: 7/21/2016 11:28:08 AM ******/

-- sp_rep_GetPubStatsForISIPublicationsAllCollegesAllYears 0 , 2008 , 2014

CREATE  procedure [dbo].[sp_rep_GetPubStatsForISIPublicationsAllCollegesAllYears]

@doctype int = null,
@fromYear int = null,
@toYear int = null

AS

select distinct publication_year, count(Publication_ISI_ID) as Publication_Count
from Publication_ISI pubISI
where 1=1
and Publication_Year >= isnull(@fromYear,2006)
and Publication_Year <= isnull(@toYear, YEAR(getdate()))
and 
	(@doctype= 0 and pubISI.Document_Type = pubISI.Document_Type
	  OR @doctype= 1 and pubISI.Document_Type in ('Article; Proceedings Paper','Article')	  
	  OR @doctype= 2 and pubISI.Document_Type in ('Proceedings Paper')
	)
group by Publication_Year
order by Publication_Year

GO
/* *********************************************************************************************** */
/* *********************************************************************************************** */

/****** Object:  StoredProcedure [dbo].[sp_rep_GetPublicationStatsForFacultyAllCollegesByYear]    Script Date: 7/21/2016 10:26:28 AM ******/

CREATE PROCEDURE [dbo].[sp_rep_GetPublicationStatsForFacultyAllCollegesByYear] 
	@start_year int = null,
	@end_year int = null
	AS
BEGIN

	SET NOCOUNT ON;

	declare @cnt_year  varchar(10) = isnull(@start_year,2006),	
		@query varchar(max) = ''

	set @end_year = isnull(@end_year, YEAR(GETDATE()))

	set @query = 
	'select r.kfupmid, full_name'
	while @cnt_year <= @end_year 
	begin

	set @query +=' 
	,count(case when Publication_Year = ' + @cnt_year + ' then Publication_ISI_ID end) y' + @cnt_year	
	set @cnt_year = @cnt_year + 1
	end
	
	set @query += '
	, r.department_code 
	from researcher r
	join Publication_ISI_Author a
	on a.kfupmid = r.KFUPMID
	join Publication_ISI p
	on p.WOS_Number = a.WOS_Number
	group by r.KFUPMID, full_name, r.department_code
	'

exec (@query)
END
GO


/* *********************************************************************************************** */
/* *********************************************************************************************** */

/****** Object:  StoredProcedure [dbo].[sp_rep_GetPublicationStatsForFacultySingleCollegeByYear]    Script Date: 7/21/2016 10:26:28 AM ******/

-- [sp_rep_GetPublicationStatsForFacultySingleCollegeByYear] 'CCSE' 

CREATE PROCEDURE [dbo].[sp_rep_GetPublicationStatsForFacultySingleCollegeByYear] 
	@college_code varchar(10) = null,
	@start_year int = null,
	@end_year int = null
		
	AS
BEGIN

	SET NOCOUNT ON;

    -- Insert statements for procedure here
	declare @cnt_year  varchar(10) = isnull(@start_year,2006),	
		@query varchar(max) = ''

	set @end_year = isnull(@end_year, YEAR(GETDATE()))

	set @query = 
	'select r.kfupmid, full_name'
	while @cnt_year <= @end_year 
	begin

	set @query +=' 
	,count(case when Publication_Year = ' + @cnt_year + ' then Publication_ISI_ID end) y' + @cnt_year	
	set @cnt_year = @cnt_year + 1
	end
	
	set @query += ' 
	, r.department_code 
	from researcher r	
	join department d 
	on d.department_code = r.department_code
	join Publication_ISI_Author a
	on a.kfupmid = r.KFUPMID
	join Publication_ISI p
	on p.WOS_Number = a.WOS_Number
	where d.parent_department_code = ''' + @college_code + '''
	group by r.KFUPMID, full_name, r.department_code	
	'
EXEC (@query)
END
GO


/* *********************************************************************************************** */
/* *********************************************************************************************** */

/****** Object:  StoredProcedure [dbo].[sp_rep_GetPublicationStatsForFacultySingleDepartmentByYear]    Script Date: 7/21/2016 10:26:28 AM ******/

-- [sp_rep_GetPublicationStatsForFacultySingleDepartmentByYear] 'SE' 

CREATE PROCEDURE [dbo].[sp_rep_GetPublicationStatsForFacultySingleDepartmentByYear] 
	@dept_code varchar(10) = null,
	@start_year int = null,
	@end_year int = null
		
	AS
BEGIN

	SET NOCOUNT ON;

	declare @cnt_year  varchar(10) = isnull(@start_year,2006),	
		@query varchar(max) = ''

	set @end_year = isnull(@end_year, YEAR(GETDATE()))
	
	set @query = 
	'select r.kfupmid, full_name'
	while @cnt_year <= @end_year 
	begin

	set @query +=' 
	,count(case when Publication_Year = ' + @cnt_year + ' then Publication_ISI_ID end) y' + @cnt_year	
	set @cnt_year = @cnt_year + 1
	end
	
	set @query += ' 	
	from researcher r	
	join Publication_ISI_Author a
	on a.kfupmid = r.KFUPMID
	join Publication_ISI p
	on p.WOS_Number = a.WOS_Number
	where r.department_code = ''' + @dept_code + '''
	group by r.KFUPMID, full_name
	'

EXEC (@query)
END
GO


/* *********************************************************************************************** */
/* *********************************************************************************************** */

/****** Object:  StoredProcedure [dbo].[sp_rep_GetPublicationStatsForISIPublicationsForAllDocTypesSingleDepartmentAllYears]    Script Date: 7/21/2016 10:26:28 AM ******/

-- sp_rep_GetStatsForISIPublicationsForAllDocTypesSingleDepartmentAllYears 'ICS', 2010, 2017

create  procedure [dbo].[sp_rep_GetPublicationStatsForISIPublicationsForAllDocTypesSingleDepartmentAllYears]

@dept_code varchar(20),
@fromYear int = null,
@toYear int = null
AS

select distinct publication_year, count(Publication_ISI_ID) as Publication_Count,r.Department_Code
from Publication_ISI pubISI
inner join Publication_ISI_Author pubISIAuth on pubISI.WOS_Number = pubISIAuth.WOS_Number
inner join Researcher r on r.KFUPMID = pubISIAuth.KFUPMID
where 1=1 
and Publication_Year >= isnull(@fromYear,2006)
and Publication_Year <= isnull(@toYear, YEAR(getdate()))
and r.Department_Code = @dept_code
group by Publication_Year, r.Department_Code
order by Publication_Year

GO


/* *********************************************************************************************** */
/* *********************************************************************************************** */

/****** Object:  StoredProcedure [dbo].[sp_rep_GetPublicationStatsForStudentInvolvementForSingleCollege]    Script Date: 7/21/2016 10:26:28 AM ******/

-- [sp_rep_GetStatsForISIPublicationsForSingleCollege] 'CS'  
-- [sp_rep_GetStatsForStudentInvolvementForSingleCollege] 'CS' 
create  procedure [dbo].[sp_rep_GetPublicationStatsForStudentInvolvementForSingleCollege]

@college_code varchar(20) ,
@fromYear int = null,
@toYear int = null,
@doctype int = null
 
AS

Set @doctype = 1 --All

select distinct publication_year, count(Publication_ISI_ID) as Publication_Count,d.Parent_Department_Code
from Publication_ISI pubISI
inner join Publication_ISI_Author pubISIAuth on pubISI.WOS_Number = pubISIAuth.WOS_Number
inner join Researcher r on r.KFUPMID = pubISIAuth.KFUPMID
inner join GraduateStudent g on g.AdvisorID = r.KFUPMID
inner join Department d on d.Department_Code = r.Department_Code
where 1=1 
and Publication_Year >= isnull(@fromYear,2006)
and Publication_Year <= isnull(@toYear, YEAR(getdate()))
and d.Parent_Department_Code = @college_code

group by Publication_Year, d.Parent_Department_Code
order by Publication_Year

GO


/* *********************************************************************************************** */
/* *********************************************************************************************** */

/****** Object:  StoredProcedure [dbo].[sp_rep_GetPublicationStatsForStudentInvolvementForSingleDepartment]    Script Date: 7/21/2016 10:26:28 AM ******/

-- [sp_rep_GetStatsForISIPublicationsForSingleCollege] 'CS'  
-- [sp_rep_GetStatsForStudentInvolvementForSingleCollege] 'CS' 
create  procedure [dbo].[sp_rep_GetPublicationStatsForStudentInvolvementForSingleDepartment]

@dept_code varchar(20) ,
@fromYear int = null,
@toYear int = null,
@doctype int = null
 
AS

Set @doctype = 1 --All

select distinct publication_year, count(Publication_ISI_ID) as Publication_Count,r.Department_Code
from Publication_ISI pubISI
inner join Publication_ISI_Author pubISIAuth on pubISI.WOS_Number = pubISIAuth.WOS_Number
inner join Researcher r on r.KFUPMID = pubISIAuth.KFUPMID
inner join GraduateStudent g on g.AdvisorID = r.KFUPMID
where 1=1 
and Publication_Year >= isnull(@fromYear,2006)
and Publication_Year <= isnull(@toYear, YEAR(getdate()))
and r.Department_Code = @dept_code


group by Publication_Year, r.Department_Code
order by Publication_Year

GO


/* *********************************************************************************************** */
/* *********************************************************************************************** */

/****** Object:  StoredProcedure [dbo].[sp_rep_GetPubStatsForISIPublicationsForSingleCollege]    Script Date: 7/21/2016 10:26:28 AM ******/

-- [sp_rep_GetPubStatsForISIPublicationsForSingleCollege] 'cs', 1, 2000, 2016
 
CREATE  procedure [dbo].[sp_rep_GetPubStatsForISIPublicationsForSingleCollege]
 
@college_code varchar(20) ,
@doctype int = null,
@fromYear int = null,
@toYear int = null
AS
 
select distinct publication_year, count(Publication_ISI_ID) as Publication_Count,d.Parent_Department_Code
from Publication_ISI pubISI
inner join Publication_ISI_Author pubISIAuth on pubISI.WOS_Number = pubISIAuth.WOS_Number
inner join Researcher r on r.KFUPMID = pubISIAuth.KFUPMID
inner join Department d on d.Department_Code = r.Department_Code
where 1=1
and Publication_Year >= isnull(@fromYear,2006)
and Publication_Year <= isnull(@toYear, YEAR(getdate()))
and d.Parent_Department_Code = @college_code
and
       (@doctype= 0 and pubISI.Document_Type = pubISI.Document_Type
         OR @doctype= 1 and pubISI.Document_Type in ('Article; Proceedings Paper','Article')    
         OR @doctype= 2 and pubISI.Document_Type in ('Proceedings Paper')
       )
group by Publication_Year, d.Parent_Department_Code
order by Publication_Year

GO


/* *********************************************************************************************** */
/* *********************************************************************************************** */

/****** Object:  StoredProcedure [dbo].[sp_rep_GetPubStatsForISIPublicationsForSingleDepartment]    Script Date: 7/21/2016 10:26:28 AM ******/

-- [sp_rep_GetPubStatsForISIPublicationsForSingleDepartment] 'SE', 0, 2000 , 2016
 
CREATE  procedure [dbo].[sp_rep_GetPubStatsForISIPublicationsForSingleDepartment]
 
@dept_code varchar(20),
@doctype int = null,
@fromYear int = null,
@toYear int = null
 
AS
 
select distinct publication_year, count(Publication_ISI_ID) as Publication_Count,r.Department_Code
from Publication_ISI pubISI
inner join Publication_ISI_Author pubISIAuth on pubISI.WOS_Number = pubISIAuth.WOS_Number
inner join Researcher r on r.KFUPMID = pubISIAuth.KFUPMID
inner join Department d on d.Department_Code = r.Department_Code
where 1=1
and Publication_Year >= isnull(@fromYear,2006)
and Publication_Year <= isnull(@toYear, YEAR(getdate()))
and d.Department_Code = @dept_code
and
       (@doctype= 0 and pubISI.Document_Type = pubISI.Document_Type
         OR @doctype= 1 and pubISI.Document_Type in ('Article; Proceedings Paper','Article')    
         OR @doctype= 2 and pubISI.Document_Type in ('Proceedings Paper')
       )
group by Publication_Year, r.Department_Code
order by Publication_Year
 

GO


/* *********************************************************************************************** */
/* *********************************************************************************************** */

/****** Object:  StoredProcedure [dbo].[sp_rep_GetPubStatsForNonISIPublicationsAllCollegesAllYears]    Script Date: 7/21/2016 10:26:28 AM ******/

-- sp_rep_GetPubStatsForNonISIPublicationsAllCollegesAllYears 0 , 2008 , 2014
 
CREATE  procedure [dbo].[sp_rep_GetPubStatsForNonISIPublicationsAllCollegesAllYears]
@doctype int = null,
@fromYear int = null,
@toYear int = null
 
AS
 
select distinct publication_year, count(Publication_NonISI_ID) as Publication_Count
from Publication_NonISI pubNonISI
where 1=1
and Publication_Year >= isnull(@fromYear,2006)
and Publication_Year <= isnull(@toYear, YEAR(getdate()))
and (
         pubNonISI.Approved = @doctype -- approved = 0 / 1
       )
group by Publication_Year
order by Publication_Year

GO

/* *********************************************************************************************** */
/* *********************************************************************************************** */

/****** Object:  StoredProcedure [dbo].[sp_rep_GetPubStatsForNonISIPublicationsForSingleCollege]    Script Date: 7/21/2016 10:26:28 AM ******/

-- [sp_rep_GetPubStatsForNonISIPublicationsForSingleCollege] 'cs', 1, 2000, 2016
 
CREATE  procedure [dbo].[sp_rep_GetPubStatsForNonISIPublicationsForSingleCollege]
 
@college_code varchar(20) ,
@doctype int = null,
@fromYear int = null,
@toYear int = null
AS
 
select distinct publication_year, count(pubNonISI.Publication_NonISI_ID) as Publication_Count,d.Parent_Department_Code
from Publication_NonISI pubNonISI
inner join Publication_NonISI_Author pubNonISIAuth on pubNonISI.Publication_NonISI_ID = pubNonISIAuth.Publication_NonISI_ID
inner join Researcher r on r.KFUPMID = pubNonISIAuth.KFUPMID
inner join Department d on d.Department_Code = r.Department_Code
where 1=1
and Publication_Year >= isnull(@fromYear,2006)
and Publication_Year <= isnull(@toYear, YEAR(getdate()))
and d.Parent_Department_Code = @college_code
and (
         pubNonISI.Approved = @doctype -- approved = 0 / 1
       )
group by Publication_Year, d.Parent_Department_Code
order by Publication_Year

GO



/* *********************************************************************************************** */
/* *********************************************************************************************** */

/****** Object:  StoredProcedure [dbo].[sp_rep_GetPubStatsForNonISIPublicationsForSingleDepartment]    Script Date: 7/21/2016 10:26:28 AM ******/

-- [sp_rep_GetPubStatsForNonISIPublicationsForSingleDepartment] 'ICS', 0, 2009 , 2014
 
CREATE  procedure [dbo].[sp_rep_GetPubStatsForNonISIPublicationsForSingleDepartment]
 
@dept_code varchar(20),
@doctype int = null,
@fromYear int = null,
@toYear int = null
 
AS
 
select distinct publication_year, count(pubNonISI.Publication_NonISI_ID) as Publication_Count, r.Department_Code
from Publication_NonISI pubNonISI
inner join Publication_NonISI_Author pubNonISIAuth on pubNonISI.Publication_NonISI_ID = pubNonISIAuth.Publication_NonISI_ID
inner join Researcher r on r.KFUPMID = pubNonISIAuth.KFUPMID
inner join Department d on d.Department_Code = r.Department_Code
where 1=1
and Publication_Year >= isnull(@fromYear,2006)
and Publication_Year <= isnull(@toYear, YEAR(getdate()))
and d.Department_Code = @dept_code
and (
         pubNonISI.Approved = @doctype -- approved = 0 / 1
       )
group by Publication_Year, r.Department_Code
order by Publication_Year
 

GO



/* *********************************************************************************************** */
/* *********************************************************************************************** */

/****** Object:  StoredProcedure [dbo].[sp_rep_GetStatsForBooks]    Script Date: 7/21/2016 10:26:28 AM ******/

CREATE PROCEDURE [dbo].[sp_rep_GetStatsForBooks] 
AS
BEGIN

	SET NOCOUNT ON;

	SELECT Publication_Year as Year, COUNT(*) as Books FROM Book_Authored B		
	WHERE Publication_Year > 2000
	GROUP BY Publication_Year
	ORDER BY Publication_Year DESC
END
GO



/* *********************************************************************************************** */
/* *********************************************************************************************** */

/****** Object:  StoredProcedure [dbo].[sp_rep_GetStatsForBooksByCollege]    Script Date: 7/21/2016 10:26:28 AM ******/

CREATE PROCEDURE [dbo].[sp_rep_GetStatsForBooksByCollege] 
	@college_code varchar(10) = null
AS
BEGIN

	SET NOCOUNT ON;

	SELECT Publication_Year as Year, COUNT(*) as Books FROM Book_Authored B	
	JOIN Book_Authored_Author A ON(B.Book_Authored_ID = A.Book_Authored_ID)
	JOIN Researcher R ON(A.KFUPMID = R.KFUPMID)	
	JOIN Department D ON(D.Department_Code = R.Department_Code)
	WHERE D.Parent_Department_Code = ISNULL(@college_code, D.Parent_Department_Code)
	 AND Publication_Year > 2000
	GROUP BY Publication_Year
	ORDER BY Publication_Year DESC
END
GO



/* *********************************************************************************************** */
/* *********************************************************************************************** */


/****** Object:  StoredProcedure [dbo].[sp_rep_GetStatsForBooksByDepartment]    Script Date: 7/21/2016 10:26:28 AM ******/

CREATE PROCEDURE [dbo].[sp_rep_GetStatsForBooksByDepartment] 	
	@dept_code varchar(10) = null
AS
BEGIN
	SET NOCOUNT ON;

	SELECT Publication_Year as Year, COUNT(*) as Books FROM Book_Authored B	
	JOIN Book_Authored_Author A ON(B.Book_Authored_ID = A.Book_Authored_ID)
	JOIN Researcher R ON(A.KFUPMID = R.KFUPMID)	
	WHERE R.Department_Code = ISNULL(@dept_code, R.Department_Code)
	 AND Publication_Year > 2000
	GROUP BY Publication_Year
	ORDER BY Publication_Year DESC
END
GO


/* *********************************************************************************************** */
/* *********************************************************************************************** */

/****** Object:  StoredProcedure [dbo].[sp_rep_GetStatsForBooksByFaculty]    Script Date: 7/21/2016 10:26:28 AM ******/

CREATE PROCEDURE [dbo].[sp_rep_GetStatsForBooksByFaculty] 
	@id int = null
AS
BEGIN

	SET NOCOUNT ON;

	SELECT Publication_Year as Year, COUNT(*) as Books FROM Book_Authored B	
	JOIN Book_Authored_Author A ON(B.Book_Authored_ID = A.Book_Authored_ID)	
	WHERE KFUPMID = ISNULL(@id, KFUPMID)
	 AND Publication_Year > 2000
	GROUP BY Publication_Year
	ORDER BY Publication_Year DESC
END
GO



/* *********************************************************************************************** */
/* *********************************************************************************************** */


/****** Object:  StoredProcedure [dbo].[sp_rep_GetStatsForBooksByFacutly]    Script Date: 7/21/2016 10:26:28 AM ******/

CREATE PROCEDURE [dbo].[sp_rep_GetStatsForBooksByFacutly] 
	@id int = null
AS
BEGIN
	SET NOCOUNT ON;

	SELECT Publication_Year as Year, COUNT(*) as Books FROM Book_Authored B	
	JOIN Book_Authored_Author A ON(B.Book_Authored_ID = A.Book_Authored_ID)	
	WHERE KFUPMID = ISNULL(@id, KFUPMID)
	 AND Publication_Year > 2000
	GROUP BY Publication_Year
	ORDER BY Publication_Year DESC
END
GO


/* *********************************************************************************************** */
/* *********************************************************************************************** */


/****** Object:  StoredProcedure [dbo].[sp_rep_GetStatsForISIPublicationsByFaculty]    Script Date: 7/21/2016 10:26:28 AM ******/

CREATE PROCEDURE [dbo].[sp_rep_GetStatsForISIPublicationsByFaculty] 
	@id int = null
AS
BEGIN
	SET NOCOUNT ON;

	SELECT Publication_Year as Year, COUNT(*) as Publications
	FROM Publication_ISI_Author A
	JOIN Publication_ISI P ON(P.WOS_Number=A.WOS_Number)
	WHERE A.KFUPMID = ISNULL(@id, A.KFUPMID) AND Publication_Year > 2000
	GROUP BY Publication_Year
	ORDER BY Publication_Year DESC
	
END
GO


/* *********************************************************************************************** */
/* *********************************************************************************************** */


/****** Object:  StoredProcedure [dbo].[sp_rep_GetPubStatsForNonISIPublicationsByFaculty]    Script Date: 7/21/2016 10:26:28 AM ******/

CREATE PROCEDURE [dbo].[sp_rep_GetPubStatsForNonISIPublicationsByFaculty] 
	@id int = null
AS
BEGIN

	SET NOCOUNT ON;

	SELECT Publication_Year as Year, COUNT(*) as Publications FROM Publication_NonISI P
	JOIN Publication_NonISI_Author A on(A.Publication_NonISI_ID = P.Publication_NonISI_ID)	
	WHERE A.KFUPMID = ISNULL(@id, A.KFUPMID)
	 AND Publication_Year > 2000
	GROUP BY Publication_Year
	ORDER BY Publication_Year DESC
END
GO


/* *********************************************************************************************** */
/* *********************************************************************************************** */


/****** Object:  StoredProcedure [dbo].[sp_rep_GetStatsForPublicationPoints]    Script Date: 7/21/2016 10:26:28 AM ******/

CREATE PROCEDURE [dbo].[sp_rep_GetStatsForPublicationPoints] 
AS
BEGIN

	SET NOCOUNT ON;

	SELECT Publication_Year as Year, SUM(A.Publication_Points) as [Publication Points] FROM Publication_ISI P
	JOIN Publication_ISI_Author A on(A.WOS_Number = P.WOS_Number)
	WHERE P.Publication_Year > 2000
	GROUP BY Publication_Year
	ORDER BY Publication_Year DESC
END

GO


/* *********************************************************************************************** */
/* *********************************************************************************************** */


/****** Object:  StoredProcedure [dbo].[sp_rep_GetStatsForPublicationPointsByCollege]    Script Date: 7/21/2016 10:26:28 AM ******/

CREATE PROCEDURE [dbo].[sp_rep_GetStatsForPublicationPointsByCollege] 
	@college_code varchar(10) = null
AS
BEGIN

	SET NOCOUNT ON;

	SELECT Publication_Year as Year, SUM(A.Publication_Points) as [Publication Points] FROM Publication_ISI P
	JOIN Publication_ISI_Author A on(A.WOS_Number = P.WOS_Number)
	JOIN Researcher R ON(R.KFUPMID = A.KFUPMID)
	JOIN Department D ON(D.Department_Code = R.Department_Code)
	WHERE D.Parent_Department_Code = ISNULL(@college_code, D.Parent_Department_Code)
	 AND Publication_Year > 2000
	GROUP BY Publication_Year
	ORDER BY Publication_Year DESC
END
GO


/* *********************************************************************************************** */
/* *********************************************************************************************** */


/****** Object:  StoredProcedure [dbo].[sp_rep_GetStatsForPublicationPointsByDepartment]    Script Date: 7/21/2016 10:26:28 AM ******/

CREATE PROCEDURE [dbo].[sp_rep_GetStatsForPublicationPointsByDepartment] 
	@dept_code varchar(10) = null
AS
BEGIN

	SET NOCOUNT ON;

	SELECT Publication_Year as Year, SUM(A.Publication_Points) as [Publication Points] FROM Publication_ISI P
	JOIN Publication_ISI_Author A on(A.WOS_Number = P.WOS_Number)
	JOIN Researcher R ON(R.KFUPMID = A.KFUPMID)
	WHERE R.Department_Code = ISNULL(@dept_code, R.Department_Code)
	 AND Publication_Year > 2000
	GROUP BY Publication_Year
	ORDER BY Publication_Year DESC
END
GO


/* *********************************************************************************************** */
/* *********************************************************************************************** */


/****** Object:  StoredProcedure [dbo].[sp_rep_GetStatsForPublicationPointsByFaculty]    Script Date: 7/21/2016 10:26:28 AM ******/

CREATE PROCEDURE [dbo].[sp_rep_GetStatsForPublicationPointsByFaculty] 
	@id int = null
AS
BEGIN

	SET NOCOUNT ON;

	SELECT Publication_Year as Year, SUM(A.Publication_Points) as [Publication Points] FROM Publication_ISI_Author A 
	JOIN Publication_ISI P ON(P.WOS_Number = A.WOS_Number)
	WHERE A.KFUPMID = ISNULL(@id, A.KFUPMID)
	 AND Publication_Year > 2000
	GROUP BY Publication_Year
	ORDER BY Publication_Year DESC
END
GO


/* *********************************************************************************************** */
/* *********************************************************************************************** */


/****** Object:  StoredProcedure [dbo].[sp_rep_GetStatsForStudentCitationTimesForAllDepartment]    Script Date: 7/21/2016 10:26:28 AM ******/

-- [sp_rep_GetStatsForStudentISIPublicationsForAllDepartment] 2008, 2010

create  procedure [dbo].[sp_rep_GetStatsForStudentCitationTimesForAllDepartment]

@fromYear int = null,
@toYear int = null,
@doctype int = null

as

select distinct publication_year, sum(pubISI.Time_Cited) as Time_Cited
from Publication_ISI pubISI
inner join Publication_ISI_Author pubISIAuth on pubISI.WOS_Number = pubISIAuth.WOS_Number
inner join Researcher r on r.KFUPMID = pubISIAuth.KFUPMID
inner join GraduateStudent g on g.AdvisorID = r.KFUPMID
where 1=1 
and Publication_Year >= isnull(@fromYear,2006)
and Publication_Year <= isnull(@toYear, YEAR(getdate()))
group by Publication_Year
order by Publication_Year

GO


/* *********************************************************************************************** */
/* *********************************************************************************************** */


/****** Object:  StoredProcedure [dbo].[sp_rep_GetStatsForStudentCitationTimesForSingleDepartment]    Script Date: 7/21/2016 10:26:28 AM ******/

-- [sp_rep_GetStatsForStudentCitationTimesForSingleDepartment] MATH, 2008, 2010

CREATE  procedure [dbo].[sp_rep_GetStatsForStudentCitationTimesForSingleDepartment]

@deptCode varchar(20),
@fromYear int = null,
@toYear int = null,
@doctype int = null

as

select distinct publication_year, sum(pubISI.Time_Cited) as Time_Cited
from Publication_ISI pubISI
inner join Publication_ISI_Author pubISIAuth on pubISI.WOS_Number = pubISIAuth.WOS_Number
inner join GraduateStudent g on g.AdvisorID = pubISIAuth.KFUPMID
where 1=1 
and g.StudentDepartmentCode = @deptCode
and Publication_Year >= isnull(@fromYear,2006)
and Publication_Year <= isnull(@toYear, YEAR(getdate()))
group by Publication_Year
order by Publication_Year

GO


/* *********************************************************************************************** */
/* *********************************************************************************************** */


/****** Object:  StoredProcedure [dbo].[sp_rep_GetStatsForStudentInvolvementForSingleCollege]    Script Date: 7/21/2016 10:26:28 AM ******/

-- [sp_rep_GetStatsForISIPublicationsForSingleCollege] 'CS', 2008, 2010

create  procedure [dbo].[sp_rep_GetStatsForStudentInvolvementForSingleCollege]

@college_code varchar(20) ,
@fromYear int = null,
@toYear int = null,
@doctype int = null
 
AS

Set @doctype = 1 --All

select distinct publication_year, count(Publication_ISI_ID) as Publication_Count,d.Parent_Department_Code
from Publication_ISI pubISI
inner join Publication_ISI_Author pubISIAuth on pubISI.WOS_Number = pubISIAuth.WOS_Number
inner join Researcher r on r.KFUPMID = pubISIAuth.KFUPMID
inner join GraduateStudent g on g.AdvisorID = r.KFUPMID
inner join Department d on d.Department_Code = r.Department_Code
where 1=1 
and Publication_Year >= isnull(@fromYear,2006)
and Publication_Year <= isnull(@toYear, YEAR(getdate()))
and d.Parent_Department_Code = @college_code

group by Publication_Year, d.Parent_Department_Code
order by Publication_Year


GO


/* *********************************************************************************************** */
/* *********************************************************************************************** */


/****** Object:  StoredProcedure [dbo].[sp_rep_GetStatsForStudentISIPublicationsForAllDepartment]    Script Date: 7/21/2016 10:26:28 AM ******/

-- [sp_rep_GetCitationStatsForISIPublicationsForSingleDepartment] 'MATH', 2008, 2010

create  procedure [dbo].[sp_rep_GetStatsForStudentISIPublicationsForAllDepartment]
@fromYear int = null,
@toYear int = null,
@doctype int = null

as

select distinct publication_year, count(pubISI.Publication_ISI_ID) as publication
from Publication_ISI pubISI
inner join Publication_ISI_Author pubISIAuth on pubISI.WOS_Number = pubISIAuth.WOS_Number
inner join Researcher r on r.KFUPMID = pubISIAuth.KFUPMID
inner join GraduateStudent g on g.AdvisorID = r.KFUPMID
where 1=1 
and Publication_Year >= isnull(@fromYear,2006)
and Publication_Year <= isnull(@toYear, YEAR(getdate()))
group by Publication_Year
order by Publication_Year

GO


/* *********************************************************************************************** */
/* *********************************************************************************************** */


/****** Object:  StoredProcedure [dbo].[sp_rep_GetStatsForStudentISIPublicationsForSingleDepartment]    Script Date: 7/21/2016 10:26:28 AM ******/

-- [sp_rep_GetStatsForStudentISIPublicationsForSingleDepartment] MATH, 2008, 2010

CREATE  procedure [dbo].[sp_rep_GetStatsForStudentISIPublicationsForSingleDepartment]
@deptCode varchar(20),
@fromYear int = null,
@toYear int = null,
@doctype int = null

as

select distinct publication_year, count(pubISI.Publication_ISI_ID) as publication
from Publication_ISI pubISI
inner join Publication_ISI_Author pubISIAuth on pubISI.WOS_Number = pubISIAuth.WOS_Number
inner join GraduateStudent g on g.AdvisorID = pubISIAuth.KFUPMID
where 1=1 
and g.StudentDepartmentCode = @deptCode
and Publication_Year >= isnull(@fromYear,2006)
and Publication_Year <= isnull(@toYear, YEAR(getdate()))
group by Publication_Year
order by Publication_Year

GO


/* *********************************************************************************************** */
/* *********************************************************************************************** */


/****** Object:  StoredProcedure [dbo].[sp_rep_SearchFacultyByName]    Script Date: 7/21/2016 10:26:28 AM ******/

CREATE PROCEDURE [dbo].[sp_rep_SearchFacultyByName] 
	@search_string varchar(255) = null
AS
BEGIN

	SET NOCOUNT ON;

	SELECT R.* FROM Researcher R
	WHERE Full_Name LIKE '%' + @search_string + '%'
	OR First_Name LIKE '%' + @search_string + '%'
	OR Middle_Name LIKE '%' + @search_string + '%'
	OR Last_Name LIKE '%' + @search_string + '%'	
END
GO


/* *********************************************************************************************** */
/* *********************************************************************************************** */


/****** Object:  StoredProcedure [dbo].[sp_rep_SearchFacultyByNameAndCollege]    Script Date: 7/21/2016 10:26:28 AM ******/

CREATE PROCEDURE [dbo].[sp_rep_SearchFacultyByNameAndCollege] 
	@college_code varchar(10) = null,
	@search_string varchar(255) = null
AS
BEGIN

	SET NOCOUNT ON;

	SELECT R.* FROM Researcher R
	JOIN Department D ON(D.Department_Code = R.Department_Code)
	WHERE D.Parent_Department_Code = isnull(@college_code, D.Parent_Department_Code)
	AND (
	Full_Name LIKE '%' + @search_string + '%'
	OR First_Name LIKE '%' + @search_string + '%'
	OR Middle_Name LIKE '%' + @search_string + '%'
	OR Last_Name LIKE '%' + @search_string + '%'
	)
END
GO


/* *********************************************************************************************** */
/* *********************************************************************************************** */

/****** Object:  StoredProcedure [dbo].[sp_rep_SearchFacultyByNameAndDepartment]    Script Date: 7/21/2016 10:26:28 AM ******/

CREATE PROCEDURE [dbo].[sp_rep_SearchFacultyByNameAndDepartment] 
	@dept_code varchar(10) = null,
	@search_string varchar(255) = null
AS
BEGIN

	SET NOCOUNT ON;

	SELECT R.* FROM Researcher R	
	WHERE R.Department_Code = isnull(@dept_code, R.Department_Code)
	AND (
	Full_Name LIKE '%' + @search_string + '%'
	OR First_Name LIKE '%' + @search_string + '%'
	OR Middle_Name LIKE '%' + @search_string + '%'
	OR Last_Name LIKE '%' + @search_string + '%'
	)
END

GO



/* *********************************************************************************************** */
/* *********************************************************************************************** */


/****** Object:  StoredProcedure [dbo].[sp_rep_StatsByDepartment]    Script Date: 7/21/2016 10:26:28 AM ******/

-- select * from rms_Researchers where kfupmid = 7120281

-- select * from rms_books_authored where book_authored_id = 46

-- select * from rms_books_authored where publicationyear between 2015 and 2016

-- select * from rms_conferences where kfupmid = 7120281

-- select * from rms_patents_issued order by yearofissue
-- select * from Department where Department_Type='CLG'

-- sp_rep_StatsByCollege 'CCSE', 2008, 2016

create PROCEDURE [dbo].[sp_rep_StatsByDepartment]
@dept_code varchar(10),
@start_year int = null,
@end_year int = null
AS
BEGIN

SET NOCOUNT ON;

SELECT isnull(t1.Year, isnull(t2.Publication_Year, isnull(t3.Publication_Year,t4.Publication_Year))) AS Year, 
isnull(t1.Conferences,0) AS Conferences, 
isnull(t2.Books,0) AS Books,
isnull(t3.ISI_Publications,0) AS ISI_Publications,
isnull(t4.NonISI_Publications,0) AS NonISI_Publications,
isnull(t3.Publication_Points,0) AS Publication_Points,
isnull(t5.Graduate_Students,0) AS Graduate_Students,
isnull(t6.Projects,0) AS Projects,
isnull(t6.Funds,0) AS Project_Funds,
isnull(t7.Patents,0) AS Patents
FROM (
SELECT C.Year, COUNT(*) AS Conferences
FROM Conference C
inner join Researcher r on C.KFUPMID = r.KFUPMID
where r.Department_Code = @dept_code
GROUP BY C.Year
) t1
FULL JOIN (
SELECT B.Publication_Year, COUNT(*) AS Books
FROM Book_Authored B
inner join Book_Authored_Author ba on B.Book_Authored_ID = ba.Book_Authored_ID
inner join Researcher r on ba.KFUPMID = r.KFUPMID
where r.Department_Code = @dept_code
GROUP BY B.Publication_Year
) t2
on(t1.Year = t2.Publication_Year)
FULL JOIN (
SELECT P.Publication_Year, COUNT(*) AS ISI_Publications, SUM(PA.Publication_Points) AS Publication_Points
FROM Publication_ISI P Join Publication_ISI_Author PA on P.WOS_Number = PA.WOS_Number
inner join Researcher r on PA.KFUPMID = r.KFUPMID
where r.Department_Code = @dept_code
GROUP BY P.Publication_Year
) t3
on(t1.Year = t3.Publication_Year OR t2.Publication_Year = t3.Publication_Year)
FULL JOIN (
SELECT P.Publication_Year, COUNT(*) AS NonISI_Publications
FROM Publication_NonISI P
inner join Researcher r on P.KFUPMID = r.KFUPMID
where r.Department_Code = @dept_code
GROUP BY P.Publication_Year
) t4
on(t1.Year = t4.Publication_Year OR t2.Publication_Year = t4.Publication_Year OR t3.Publication_Year = t4.Publication_Year)
FULL JOIN (
SELECT G.Year, COUNT(*) AS Graduate_Students
FROM GraduateStudent G
inner join Researcher r on G.AdvisorID = r.KFUPMID
where r.Department_Code = @dept_code
GROUP BY G.Year
) t5
on(t1.Year = t5.Year OR t2.Publication_Year = t5.Year OR t3.Publication_Year = t5.Year OR t4.Publication_Year = t5.Year)
FULL JOIN (
SELECT P.Year, COUNT(*) AS Projects, SUM(P.Budget) AS Funds
FROM Project P
inner join Project_Publication pp on P.Project_ID = pp.Project_ID
inner join Publication_ISI_Author pa on pp.WOS_Number = pa.WOS_Number
inner join Researcher r on pa.KFUPMID = r.KFUPMID
where r.Department_Code = @dept_code
GROUP BY P.Year
) t6
on(t1.Year = t6.Year OR t2.Publication_Year = t6.Year OR t3.Publication_Year = t6.Year OR t4.Publication_Year = t6.Year OR t5.Year = t6.Year)
FULL JOIN (
SELECT P.Year_Of_Issue, COUNT(*) AS Patents
FROM Patent_Issued P
inner join Patent_Issued_Author pa on P.Patent_Issued_ID = pa.Patent_Issued_ID
inner join Researcher r on pa.KFUPMID = r.KFUPMID
where r.Department_Code = @dept_code
GROUP BY P.Year_Of_Issue
) t7
on(t1.Year = t7.Year_Of_Issue OR t2.Publication_Year = t7.Year_Of_Issue OR t3.Publication_Year = t7.Year_Of_Issue OR t4.Publication_Year = t7.Year_Of_Issue OR t5.Year = t7.Year_Of_Issue OR t6.Year = t7.Year_Of_Issue)
WHERE isnull(t1.Year, isnull(t2.Publication_Year, isnull(t3.Publication_Year,t4.Publication_Year))) between isnull(@start_year, 2006) AND isnull(@end_year, YEAR(getdate()))
ORDER BY isnull(t1.Year, isnull(t2.Publication_Year, isnull(t3.Publication_Year,t4.Publication_Year))) DESC
END


GO


/* *********************************************************************************************** */
/* *********************************************************************************************** */

/****** Object:  StoredProcedure [dbo].[sp_rep_StatsByCollege]    Script Date: 7/21/2016 10:26:28 AM ******/
-- select * from rms_Researchers where kfupmid = 7120281

-- select * from rms_books_authored where book_authored_id = 46

-- select * from rms_books_authored where publicationyear between 2015 and 2016

-- select * from rms_conferences where kfupmid = 7120281

-- select * from rms_patents_issued order by yearofissue
-- select * from Department where Department_Type='CLG'

-- sp_rep_StatsByCollege 'CCSE', 2008, 2016

CREATE PROCEDURE [dbo].[sp_rep_StatsByCollege]
@college_code varchar(10),
@start_year int = null,
@end_year int = null
AS
BEGIN

SET NOCOUNT ON;

SELECT isnull(t1.Year, isnull(t2.Publication_Year, isnull(t3.Publication_Year,t4.Publication_Year))) AS Year, 
isnull(t1.Conferences,0) AS Conferences, 
isnull(t2.Books,0) AS Books,
isnull(t3.ISI_Publications,0) AS ISI_Publications,
isnull(t4.NonISI_Publications,0) AS NonISI_Publications,
isnull(t3.Publication_Points,0) AS Publication_Points,
isnull(t5.Graduate_Students,0) AS Graduate_Students,
isnull(t6.Projects,0) AS Projects,
isnull(t6.Funds,0) AS Project_Funds,
isnull(t7.Patents,0) AS Patents
FROM (
SELECT C.Year, COUNT(*) AS Conferences
FROM Conference C
inner join Researcher r on C.KFUPMID = r.KFUPMID
inner join Department d on r.Department_Code = d.Department_Code
where d.Parent_Department_Code = @college_code
GROUP BY C.Year
) t1
FULL JOIN (
SELECT B.Publication_Year, COUNT(*) AS Books
FROM Book_Authored B
inner join Book_Authored_Author ba on B.Book_Authored_ID = ba.Book_Authored_ID
inner join Researcher r on ba.KFUPMID = r.KFUPMID
inner join Department d on r.Department_Code = d.Department_Code
where d.Parent_Department_Code = @college_code
GROUP BY B.Publication_Year
) t2
on(t1.Year = t2.Publication_Year)
FULL JOIN (
SELECT P.Publication_Year, COUNT(*) AS ISI_Publications, SUM(PA.Publication_Points) AS Publication_Points
FROM Publication_ISI P Join Publication_ISI_Author PA on P.WOS_Number = PA.WOS_Number
inner join Researcher r on PA.KFUPMID = r.KFUPMID
inner join Department d on r.Department_Code = d.Department_Code
where d.Parent_Department_Code = @college_code
GROUP BY P.Publication_Year
) t3
on(t1.Year = t3.Publication_Year OR t2.Publication_Year = t3.Publication_Year)
FULL JOIN (
SELECT P.Publication_Year, COUNT(*) AS NonISI_Publications
FROM Publication_NonISI P
inner join Researcher r on P.KFUPMID = r.KFUPMID
inner join Department d on r.Department_Code = d.Department_Code
where d.Parent_Department_Code = @college_code
GROUP BY P.Publication_Year
) t4
on(t1.Year = t4.Publication_Year OR t2.Publication_Year = t4.Publication_Year OR t3.Publication_Year = t4.Publication_Year)
FULL JOIN (
SELECT G.Year, COUNT(*) AS Graduate_Students
FROM GraduateStudent G
inner join Researcher r on G.AdvisorID = r.KFUPMID
inner join Department d on r.Department_Code = d.Department_Code
where d.Parent_Department_Code = @college_code
GROUP BY G.Year
) t5
on(t1.Year = t5.Year OR t2.Publication_Year = t5.Year OR t3.Publication_Year = t5.Year OR t4.Publication_Year = t5.Year)
FULL JOIN (
SELECT P.Year, COUNT(*) AS Projects, SUM(P.Budget) AS Funds
FROM Project P
inner join Project_Publication pp on P.Project_ID = pp.Project_ID
inner join Publication_ISI_Author pa on pp.WOS_Number = pa.WOS_Number
inner join Researcher r on pa.KFUPMID = r.KFUPMID
inner join Department d on r.Department_Code = d.Department_Code
where d.Parent_Department_Code = @college_code
GROUP BY P.Year
) t6
on(t1.Year = t6.Year OR t2.Publication_Year = t6.Year OR t3.Publication_Year = t6.Year OR t4.Publication_Year = t6.Year OR t5.Year = t6.Year)
FULL JOIN (
SELECT P.Year_Of_Issue, COUNT(*) AS Patents
FROM Patent_Issued P
inner join Patent_Issued_Author pa on P.Patent_Issued_ID = pa.Patent_Issued_ID
inner join Researcher r on pa.KFUPMID = r.KFUPMID
inner join Department d on r.Department_Code = d.Department_Code
where d.Parent_Department_Code = @college_code
GROUP BY P.Year_Of_Issue
) t7
on(t1.Year = t7.Year_Of_Issue OR t2.Publication_Year = t7.Year_Of_Issue OR t3.Publication_Year = t7.Year_Of_Issue OR t4.Publication_Year = t7.Year_Of_Issue OR t5.Year = t7.Year_Of_Issue OR t6.Year = t7.Year_Of_Issue)
WHERE isnull(t1.Year, isnull(t2.Publication_Year, isnull(t3.Publication_Year,t4.Publication_Year))) between isnull(@start_year, 2006) AND isnull(@end_year, YEAR(getdate()))
ORDER BY isnull(t1.Year, isnull(t2.Publication_Year, isnull(t3.Publication_Year,t4.Publication_Year))) DESC
END


GO



/* *********************************************************************************************** */
/* *********************************************************************************************** */


/****** Object:  StoredProcedure [dbo].[sp_rep_StatsAll]    Script Date: 7/21/2016 10:26:28 AM ******/
-- select * from rms_Researchers where kfupmid = 7120281

-- select * from rms_books_authored where book_authored_id = 46

-- select * from rms_books_authored where publicationyear between 2015 and 2016

-- select * from rms_conferences where kfupmid = 7120281

-- select * from rms_patents_issued order by yearofissue

--[sp_rep_StatsAll] 2008, 2016

CREATE PROCEDURE [dbo].[sp_rep_StatsAll]
@start_year int = null,
@end_year int = null
AS
BEGIN

SET NOCOUNT ON;

SELECT isnull(t1.Year, isnull(t2.Publication_Year, isnull(t3.Publication_Year,t4.Publication_Year))) AS Year, 
isnull(t1.Conferences,0) AS Conferences, 
isnull(t2.Books,0) AS Books,
isnull(t3.ISI_Publications,0) AS ISI_Publications,
isnull(t4.NonISI_Publications,0) AS NonISI_Publications,
isnull(t3.Publication_Points,0) AS Publication_Points,
isnull(t5.Graduate_Students,0) AS Graduate_Students,
isnull(t6.Projects,0) AS Projects,
isnull(t6.Funds,0) AS Project_Funds,
isnull(t7.Patents,0) AS Patents
FROM (
SELECT C.Year, COUNT(*) AS Conferences
FROM Conference C
GROUP BY C.Year
) t1
FULL JOIN (
SELECT B.Publication_Year, COUNT(*) AS Books
FROM Book_Authored B
GROUP BY B.Publication_Year
) t2
on(t1.Year = t2.Publication_Year)
FULL JOIN (
SELECT P.Publication_Year, COUNT(*) AS ISI_Publications, SUM(PA.Publication_Points) AS Publication_Points
FROM Publication_ISI P Join Publication_ISI_Author PA on P.WOS_Number = PA.WOS_Number
GROUP BY P.Publication_Year
) t3
on(t1.Year = t3.Publication_Year OR t2.Publication_Year = t3.Publication_Year)
FULL JOIN (
SELECT P.Publication_Year, COUNT(*) AS NonISI_Publications
FROM Publication_NonISI P
GROUP BY P.Publication_Year
) t4
on(t1.Year = t4.Publication_Year OR t2.Publication_Year = t4.Publication_Year OR t3.Publication_Year = t4.Publication_Year)
FULL JOIN (
SELECT G.Year, COUNT(*) AS Graduate_Students
FROM GraduateStudent G
GROUP BY G.Year
) t5
on(t1.Year = t5.Year OR t2.Publication_Year = t5.Year OR t3.Publication_Year = t5.Year OR t4.Publication_Year = t5.Year)
FULL JOIN (
SELECT P.Year, COUNT(*) AS Projects, SUM(P.Budget) AS Funds
FROM Project P
GROUP BY P.Year
) t6
on(t1.Year = t6.Year OR t2.Publication_Year = t6.Year OR t3.Publication_Year = t6.Year OR t4.Publication_Year = t6.Year OR t5.Year = t6.Year)
FULL JOIN (
SELECT P.Year_Of_Issue, COUNT(*) AS Patents
FROM Patent_Issued P
GROUP BY P.Year_Of_Issue
) t7
on(t1.Year = t7.Year_Of_Issue OR t2.Publication_Year = t7.Year_Of_Issue OR t3.Publication_Year = t7.Year_Of_Issue OR t4.Publication_Year = t7.Year_Of_Issue OR t5.Year = t7.Year_Of_Issue OR t6.Year = t7.Year_Of_Issue)
WHERE isnull(t1.Year, isnull(t2.Publication_Year, isnull(t3.Publication_Year,t4.Publication_Year))) between isnull(@start_year, 2006) AND isnull(@end_year, YEAR(getdate()))
ORDER BY isnull(t1.Year, isnull(t2.Publication_Year, isnull(t3.Publication_Year,t4.Publication_Year))) DESC
END


GO


/* *********************************************************************************************** */
/* *********************************************************************************************** */


/****** Object:  StoredProcedure [dbo].[sp_rep_StatsByFaculty]    Script Date: 7/21/2016 10:26:28 AM ******/

-- [sp_rep_StatsByDepartment] 'MATH', 2008, 2016

CREATE PROCEDURE [dbo].[sp_rep_StatsByFaculty]
@id int,
@start_year int = null,
@end_year int = null
AS
BEGIN

SET NOCOUNT ON;

SELECT isnull(t1.Year, isnull(t2.Publication_Year, isnull(t3.Publication_Year,t4.Publication_Year))) AS Year, 
isnull(t1.Conferences,0) AS Conferences, 
isnull(t2.Books,0) AS Books,
isnull(t3.ISI_Publications,0) AS ISI_Publications,
isnull(t4.NonISI_Publications,0) AS NonISI_Publications,
isnull(t3.Publication_Points,0) AS Publication_Points,
isnull(t5.Graduate_Students,0) AS Graduate_Students,
isnull(t6.Projects,0) AS Projects,
isnull(t6.Funds,0) AS Project_Funds,
isnull(t7.Patents,0) AS Patents
FROM (
SELECT C.Year, COUNT(*) AS Conferences
FROM Conference C
where C.KFUPMID = @id
GROUP BY C.Year
) t1
FULL JOIN (
SELECT B.Publication_Year, COUNT(*) AS Books
FROM Book_Authored B
inner join Book_Authored_Author ba on B.Book_Authored_ID = ba.Book_Authored_ID
where ba.KFUPMID = @id
GROUP BY B.Publication_Year
) t2
on(t1.Year = t2.Publication_Year)
FULL JOIN (
SELECT P.Publication_Year, COUNT(*) AS ISI_Publications, SUM(PA.Publication_Points) AS Publication_Points
FROM Publication_ISI P Join Publication_ISI_Author PA on P.WOS_Number = PA.WOS_Number
where PA.KFUPMID = @id
GROUP BY P.Publication_Year
) t3
on(t1.Year = t3.Publication_Year OR t2.Publication_Year = t3.Publication_Year)
FULL JOIN (
SELECT P.Publication_Year, COUNT(*) AS NonISI_Publications
FROM Publication_NonISI P
where P.KFUPMID = @id
GROUP BY P.Publication_Year
) t4
on(t1.Year = t4.Publication_Year OR t2.Publication_Year = t4.Publication_Year OR t3.Publication_Year = t4.Publication_Year)
FULL JOIN (
SELECT G.Year, COUNT(*) AS Graduate_Students
FROM GraduateStudent G
where G.AdvisorID = @id
GROUP BY G.Year
) t5
on(t1.Year = t5.Year OR t2.Publication_Year = t5.Year OR t3.Publication_Year = t5.Year OR t4.Publication_Year = t5.Year)
FULL JOIN (
SELECT P.Year, COUNT(*) AS Projects, SUM(P.Budget) AS Funds
FROM Project P
inner join Project_Publication pp on P.Project_ID = pp.Project_ID
inner join Publication_ISI_Author pa on pp.WOS_Number = pa.WOS_Number
where pa.KFUPMID = @id
GROUP BY P.Year
) t6
on(t1.Year = t6.Year OR t2.Publication_Year = t6.Year OR t3.Publication_Year = t6.Year OR t4.Publication_Year = t6.Year OR t5.Year = t6.Year)
FULL JOIN (
SELECT P.Year_Of_Issue, COUNT(*) AS Patents
FROM Patent_Issued P
inner join Patent_Issued_Author pa on P.Patent_Issued_ID = pa.Patent_Issued_ID
where pa.KFUPMID = @id
GROUP BY P.Year_Of_Issue
) t7
on(t1.Year = t7.Year_Of_Issue OR t2.Publication_Year = t7.Year_Of_Issue OR t3.Publication_Year = t7.Year_Of_Issue OR t4.Publication_Year = t7.Year_Of_Issue OR t5.Year = t7.Year_Of_Issue OR t6.Year = t7.Year_Of_Issue)
WHERE isnull(t1.Year, isnull(t2.Publication_Year, isnull(t3.Publication_Year,t4.Publication_Year))) between isnull(@start_year, 2006) AND isnull(@end_year, YEAR(getdate()))
ORDER BY isnull(t1.Year, isnull(t2.Publication_Year, isnull(t3.Publication_Year,t4.Publication_Year))) DESC
END


GO


/* *********************************************************************************************** */
/* *********************************************************************************************** */



/* *********************************************************************************************** */
/* *********************************************************************************************** */



/* *********************************************************************************************** */
/* *********************************************************************************************** */



/* *********************************************************************************************** */
/* *********************************************************************************************** */













