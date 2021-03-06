
/****** Object:  StoredProcedure [dbo].[sp_rep_GetNonISIPublicationsByCollege]    Script Date: 7/21/2016 11:13:46 AM ******/

-- [sp_rep_GetNonISIPublicationsByCollege] 'ccse', 0, 2006,2014

-- =============================================
ALTER PROCEDURE [dbo].[sp_rep_GetNonISIPublicationsByCollege] 
	@college_code varchar(10) = null,
	@Approved int = null,
	@fromyear int = null,
	@toyear int = null
AS
BEGIN

	SET NOCOUNT ON;

	SELECT DISTINCT P.* FROM Researcher R
	JOIN Department D on(D.Department_Code = R.Department_Code)
	JOIN Publication_NonISI_Author A on(A.KFUPMID = R.KFUPMID)
	JOIN Publication_NonISI P on(P.Publication_NonISI_ID = A.Publication_NonISI_ID)
	WHERE D.Parent_Department_Code = ISNULL(@college_code, D.Parent_Department_Code)
	AND P.Approved = ISNULL(@Approved, P.Approved)
	and p.Publication_Year >= ISNULL(@fromyear,2006)
	and p.Publication_Year <= ISNULL(@toyear,YEAR(GETDATE()))
	ORDER BY Publication_Year DESC, Paper_Title ASC
END

