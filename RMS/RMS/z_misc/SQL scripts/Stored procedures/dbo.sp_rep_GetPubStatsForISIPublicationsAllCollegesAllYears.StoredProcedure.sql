
/****** Object:  StoredProcedure [dbo].[sp_rep_GetPubStatsForISIPublicationsAllCollegesAllYears]    Script Date: 7/21/2016 11:28:08 AM ******/

-- sp_rep_GetPubStatsForISIPublicationsAllCollegesAllYears 0 , 2008 , 2014

ALTER  procedure [dbo].[sp_rep_GetPubStatsForISIPublicationsAllCollegesAllYears]

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
