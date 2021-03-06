USE [RMS_DB]
GO
/****** Object:  StoredProcedure [dbo].[sp_rep_GetBookStatsForSingleCollege]    Script Date: 7/25/2016 4:46:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Sami Laradji
-- Create date: 7/25/2016
-- Description:	Retrieves book count by year for single college
-- =============================================

CREATE PROCEDURE [dbo].[sp_rep_GetBookStatsForSingleCollege] 
	@college_code varchar(10),
	@fromYear int = null,
	@toYear int = null
AS
BEGIN

	SET NOCOUNT ON;

	SELECT Publication_Year, COUNT(*) as Books FROM Book_Authored B	
	JOIN Book_Authored_Author A ON(B.Book_Authored_ID = A.Book_Authored_ID)
	JOIN Researcher R ON(A.KFUPMID = R.KFUPMID)	
	JOIN Department D ON(D.Department_Code = R.Department_Code)
	WHERE D.Parent_Department_Code = @college_code
	 and Publication_Year >= isnull(@fromYear,2006)
	 and Publication_Year <= isnull(@toYear, YEAR(getdate()))
	GROUP BY Publication_Year
	ORDER BY Publication_Year DESC
END

GO
