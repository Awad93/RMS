
/****** Object:  StoredProcedure [dbo].[sp_rep_GetFacultyByCollege]    Script Date: 7/21/2016 10:26:27 AM ******/

CREATE PROCEDURE [dbo].[sp_rep_GetFacultyByCollege] 
	@college_code varchar(10) = null,
	@first_char varchar(1) = null
AS
BEGIN
	SET NOCOUNT ON
	SET @first_char = coalesce(@first_char,'');

	SELECT R.* FROM Researcher R
	JOIN Department D on(R.Department_Code = D.Department_Code)
	WHERE Parent_Department_Code = isnull(@college_code, Parent_Department_Code)
	AND Last_Name LIKE ''+@first_char+'%'
END
GO
