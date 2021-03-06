
/****** Object:  StoredProcedure [dbo].[sp_rep_GetStatsForPublicationPointsByDepartment]    Script Date: 7/21/2016 10:26:28 AM ******/

CREATE PROCEDURE [dbo].[sp_rep_GetStatsForPublicationPointsByDepartment] 
	@dept_code varchar(10) = null
AS
BEGIN

	SET NOCOUNT ON;

	SELECT Publication_Year as Year, SUM(A.Publication_Points) as [Publication Points] FROM Publication_ISI P
	JOIN Publication_ISI_Author A on(A.WOS_Number = P.WOS_Number)
	JOIN Researcher R ON(R.KFUPMID = A.KFUPMID)
	WHERE R.Department_Code = ISNULL(@dept_code, R.Department_Code)
	 AND Publication_Year > 2000
	GROUP BY Publication_Year
	ORDER BY Publication_Year DESC
END
GO
