USE [RMS_DB]
GO
/****** Object:  StoredProcedure [dbo].[sp_rep_GetBookStatsForAllColleges]    Script Date: 7/25/2016 4:46:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/****** Object:  StoredProcedure [dbo].[sp_rep_GetStatsForBooks]    Script Date: 7/21/2016 10:26:28 AM ******/


-- =============================================
-- Author:		Sami Laradji
-- Create date: 7/25/2016
-- Description:	Retrieves book count by year for all colleges
-- =============================================

create PROCEDURE [dbo].[sp_rep_GetBookStatsForAllColleges] 
@fromYear int = null,
	@toYear int = null
AS

BEGIN

	SET NOCOUNT ON;

	SELECT Publication_Year as Year, COUNT(*) as Books FROM Book_Authored B		
	WHERE Publication_Year >= isnull(@fromYear,2006)
	 and Publication_Year <= isnull(@toYear, YEAR(getdate()))
	GROUP BY Publication_Year
	ORDER BY Publication_Year DESC
END

GO
