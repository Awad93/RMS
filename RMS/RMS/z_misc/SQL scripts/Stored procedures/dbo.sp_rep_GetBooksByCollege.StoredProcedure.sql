USE [RMS_DB]
GO
/****** Object:  StoredProcedure [dbo].[sp_rep_GetBooksByCollege]    Script Date: 7/21/2016 10:26:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_rep_GetBooksByCollege] 
	@college_code varchar(10) = null
AS
BEGIN

	SET NOCOUNT ON;

	SELECT DISTINCT B.* FROM Researcher R
	JOIN Department D on(D.Department_Code = R.Department_Code)
	JOIN Book_Authored_Author A on(A.KFUPMID = R.KFUPMID)
	JOIN Book_Authored B on(B.Book_Authored_ID = A.Book_Authored_ID)
	WHERE D.Parent_Department_Code = isnull(@college_code, D.Parent_Department_Code)
	ORDER BY Book_Title
END



GO
