USE [RMS_DB]
GO
/****** Object:  StoredProcedure [dbo].[sp_rep_GetPatentIssuedStatsForSingleCollege]    Script Date: 7/25/2016 4:46:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/****** Object:  StoredProcedure [dbo].[sp_rep_GetNonISIPublicationsByDepartment]    Script Date: 7/21/2016 11:14:11 AM ******/
create PROCEDURE [dbo].[sp_rep_GetPatentIssuedStatsForSingleCollege] 
	@college_code varchar(10),
	@fromyear int = null,
	@toyear int = null
AS
BEGIN

	SET NOCOUNT ON;

	
	SELECT  Year_Of_Issue, COUNT(DISTINCT P.Patent_Issued_ID) as Patents FROM Patent_Issued P	
	JOIN Patent_Issued_Author A ON(P.Patent_Issued_ID = A.Patent_Issued_ID)
	JOIN Researcher R ON(A.KFUPMID = R.KFUPMID)	
	JOIN Department D ON(D.Department_Code = R.Department_Code)
	WHERE D.Parent_Department_Code = @college_code
	 and Year_Of_Issue >= isnull(@fromYear,2006)
	 and Year_Of_Issue <= isnull(@toYear, YEAR(getdate()))
	GROUP BY Year_Of_Issue, P.Patent_Issued_ID
	ORDER BY Year_Of_Issue DESC
END

GO
