
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
