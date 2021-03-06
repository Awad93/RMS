
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
