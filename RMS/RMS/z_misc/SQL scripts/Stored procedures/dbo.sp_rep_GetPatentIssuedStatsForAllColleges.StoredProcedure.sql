USE [RMS_DB]
GO
/****** Object:  StoredProcedure [dbo].[sp_rep_GetPatentIssuedStatsForAllColleges]    Script Date: 7/25/2016 4:46:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/****** Object:  StoredProcedure [dbo].[sp_rep_GetNonISIPublicationsByDepartment]    Script Date: 7/21/2016 11:14:11 AM ******/

-- =============================================
-- Author:		Sami Laradji
-- Create date: 7/25/2016
-- Description:	Retrieves count of patent issued by year for all colleges
-- =============================================

CREATE PROCEDURE [dbo].[sp_rep_GetPatentIssuedStatsForAllColleges] 
	@fromyear int = null,
	@toyear int = null
AS
BEGIN

	SET NOCOUNT ON;

	
	SELECT Year_Of_Issue as Year, COUNT(*) as Patents FROM Patent_Issued P		
	WHERE Year_Of_Issue >= isnull(@fromYear,2006)
	 and Year_Of_Issue <= isnull(@toYear, YEAR(getdate()))
	GROUP BY Year_Of_Issue
	ORDER BY Year_Of_Issue DESC
END

GO
