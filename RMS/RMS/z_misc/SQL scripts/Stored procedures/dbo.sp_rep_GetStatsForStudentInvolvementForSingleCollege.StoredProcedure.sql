
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
