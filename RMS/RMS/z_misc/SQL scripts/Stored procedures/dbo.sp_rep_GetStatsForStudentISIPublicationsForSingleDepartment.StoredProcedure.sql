
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
