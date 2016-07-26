
/****** Object:  StoredProcedure [dbo].[sp_rep_GetBooksByFaculty]    Script Date: 7/21/2016 10:26:27 AM ******/

CREATE PROCEDURE [dbo].[sp_rep_GetBooksByFaculty] 
	@id int = null
AS
BEGIN
	SET NOCOUNT ON;

	SELECT * FROM Book_Authored_Author A
	JOIN Book_Authored B on(A.Book_Authored_ID = B.Book_Authored_ID)
	WHERE A.KFUPMID = isnull(@id, KFUPMID)
END
GO
