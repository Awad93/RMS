
/****** Object:  StoredProcedure [dbo].[sp_rep_GetPubStatsForNonISIPublicationsByFaculty]    Script Date: 7/21/2016 10:26:28 AM ******/

CREATE PROCEDURE [dbo].[sp_rep_GetPubStatsForNonISIPublicationsByFaculty] 
	@id int = null
AS
BEGIN

	SET NOCOUNT ON;

	SELECT Publication_Year as Year, COUNT(*) as Publications FROM Publication_NonISI P
	JOIN Publication_NonISI_Author A on(A.Publication_NonISI_ID = P.Publication_NonISI_ID)	
	WHERE A.KFUPMID = ISNULL(@id, A.KFUPMID)
	 AND Publication_Year > 2000
	GROUP BY Publication_Year
	ORDER BY Publication_Year DESC
END
GO
