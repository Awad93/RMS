
/****** Object:  StoredProcedure [dbo].[sp_rep_GetNonISIPublicationsByDepartment]    Script Date: 7/21/2016 11:14:11 AM ******/

ALTER PROCEDURE [dbo].[sp_rep_GetNonISIPublicationsByDepartment] 

	@dept_code varchar(10) = null,
	@Approved int = null,
	@fromyear int = null,
	@toyear int = null
AS
BEGIN

	SET NOCOUNT ON;

	SELECT DISTINCT P.* FROM Researcher R	
	JOIN Publication_NonISI_Author A on(A.KFUPMID = R.KFUPMID)
	JOIN Publication_NonISI P on(P.Publication_NonISI_ID = A.Publication_NonISI_ID)
	WHERE R.Department_Code = isnull(@dept_code, R.Department_Code)
	AND P.Approved = ISNULL(@Approved, P.Approved)
	and p.Publication_Year >= ISNULL(@fromyear,2006)
	and p.Publication_Year <= ISNULL(@toyear,YEAR(GETDATE()))
	ORDER BY Publication_Year DESC, Paper_Title ASC
END
GO
