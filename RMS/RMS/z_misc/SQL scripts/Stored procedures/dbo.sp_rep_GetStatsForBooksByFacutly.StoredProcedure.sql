
/****** Object:  StoredProcedure [dbo].[sp_rep_GetStatsForBooksByFacutly]    Script Date: 7/21/2016 10:26:28 AM ******/

CREATE PROCEDURE [dbo].[sp_rep_GetStatsForBooksByFacutly] 
	@id int = null
AS
BEGIN
	SET NOCOUNT ON;

	SELECT Publication_Year as Year, COUNT(*) as Books FROM Book_Authored B	
	JOIN Book_Authored_Author A ON(B.Book_Authored_ID = A.Book_Authored_ID)	
	WHERE KFUPMID = ISNULL(@id, KFUPMID)
	 AND Publication_Year > 2000
	GROUP BY Publication_Year
	ORDER BY Publication_Year DESC
END
GO
