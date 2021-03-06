
/****** Object:  StoredProcedure [dbo].[sp_rep_GetStatsForISIPublicationsByFaculty]    Script Date: 7/21/2016 10:26:28 AM ******/

CREATE PROCEDURE [dbo].[sp_rep_GetStatsForISIPublicationsByFaculty] 
	@id int = null
AS
BEGIN
	SET NOCOUNT ON;

	SELECT Publication_Year as Year, COUNT(*) as Publications
	FROM Publication_ISI_Author A
	JOIN Publication_ISI P ON(P.WOS_Number=A.WOS_Number)
	WHERE A.KFUPMID = ISNULL(@id, A.KFUPMID) AND Publication_Year > 2000
	GROUP BY Publication_Year
	ORDER BY Publication_Year DESC
	
END
GO
