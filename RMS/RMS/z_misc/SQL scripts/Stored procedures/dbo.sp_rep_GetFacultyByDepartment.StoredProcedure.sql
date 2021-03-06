
/****** Object:  StoredProcedure [dbo].[sp_rep_GetFacultyByDepartment]    Script Date: 7/21/2016 10:26:27 AM ******/

CREATE PROCEDURE [dbo].[sp_rep_GetFacultyByDepartment] 
	@dept_code varchar(10) = null,
	@first_char varchar(1) = null
AS
BEGIN

	SET NOCOUNT ON
	SET @first_char = coalesce(@first_char,'');

	SELECT * FROM Researcher
	WHERE Department_Code = isnull(@dept_code, Department_Code)
	AND Last_Name LIKE ''+@first_char+'%'
END
GO
