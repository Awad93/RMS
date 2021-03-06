USE [RMS_DB]
GO
/****** Object:  StoredProcedure [dbo].[sp_rep_GetBookStatsForSingleDepartment]    Script Date: 7/25/2016 4:46:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Object:  StoredProcedure [dbo].[sp_rep_GetPublicationStatsForBooksForSingleDepartment]    Script Date: 7/25/2016 8:57:14 AM ******/


-- =============================================
-- Author:		Sami Laradji
-- Create date: 7/25/2016
-- Description:	Retrieves book count by year for single department
-- =============================================

CREATE PROCEDURE [dbo].[sp_rep_GetBookStatsForSingleDepartment] 	
	@dept_code varchar(10) = null,
	@fromYear int = null,
	@toYear int = null
AS
BEGIN
	SET NOCOUNT ON;

	SELECT Publication_Year, COUNT(*) as Books FROM Book_Authored B	
	JOIN Book_Authored_Author A ON(B.Book_Authored_ID = A.Book_Authored_ID)
	JOIN Researcher R ON(A.KFUPMID = R.KFUPMID)	
	WHERE R.Department_Code = @dept_code
	 and Publication_Year >= isnull(@fromYear,2006)
	 and Publication_Year <= isnull(@toYear, YEAR(getdate()))
	GROUP BY Publication_Year
	ORDER BY Publication_Year DESC
END

GO
