
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
