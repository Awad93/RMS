
/****** Object:  StoredProcedure [dbo].[sp_rep_GetStatsForPublicationPointsByFaculty]    Script Date: 7/21/2016 10:26:28 AM ******/

CREATE PROCEDURE [dbo].[sp_rep_GetStatsForPublicationPointsByFaculty] 
	@id int = null
AS
BEGIN

	SET NOCOUNT ON;

	SELECT Publication_Year as Year, SUM(A.Publication_Points) as [Publication Points] FROM Publication_ISI_Author A 
	JOIN Publication_ISI P ON(P.WOS_Number = A.WOS_Number)
	WHERE A.KFUPMID = ISNULL(@id, A.KFUPMID)
	 AND Publication_Year > 2000
	GROUP BY Publication_Year
	ORDER BY Publication_Year DESC
END
GO
