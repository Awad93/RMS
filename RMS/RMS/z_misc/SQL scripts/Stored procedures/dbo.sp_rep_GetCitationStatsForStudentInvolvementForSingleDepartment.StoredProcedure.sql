
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
