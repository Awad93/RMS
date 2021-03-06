
/****** Object:  StoredProcedure [dbo].[sp_rep_GetBooksByDepartment]    Script Date: 7/21/2016 10:26:27 AM ******/

CREATE PROCEDURE [dbo].[sp_rep_GetBooksByDepartment] 
	@dept_code varchar(10) = null
AS
BEGIN
	SET NOCOUNT ON;

	SELECT DISTINCT B.* FROM Researcher R
	JOIN Book_Authored_Author A on(A.KFUPMID = R.KFUPMID)
	JOIN Book_Authored B on(B.Book_Authored_ID = A.Book_Authored_ID)
	WHERE R.Department_Code = isnull(@dept_code, R.Department_Code)
	ORDER BY Book_Title
END
GO
