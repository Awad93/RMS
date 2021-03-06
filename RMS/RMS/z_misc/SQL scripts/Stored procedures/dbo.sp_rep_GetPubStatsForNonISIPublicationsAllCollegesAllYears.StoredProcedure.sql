
/****** Object:  StoredProcedure [dbo].[sp_rep_GetPubStatsForNonISIPublicationsAllCollegesAllYears]    Script Date: 7/21/2016 10:26:28 AM ******/

-- sp_rep_GetPubStatsForNonISIPublicationsAllCollegesAllYears 0 , 2008 , 2014
 
CREATE  procedure [dbo].[sp_rep_GetPubStatsForNonISIPublicationsAllCollegesAllYears]
@doctype int = null,
@fromYear int = null,
@toYear int = null
 
AS
 
if @doctype is null
	SET @doctype= 0

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
