
/****** Object:  StoredProcedure [dbo].[sp_rep_GetFacultyByNameAndCollege]    Script Date: 7/21/2016 10:26:27 AM ******/

CREATE PROCEDURE [dbo].[sp_rep_GetFacultyByNameAndCollege] 
	@college_code varchar(10) = null,
	@searched varchar(255) = null
AS
BEGIN

	SET NOCOUNT ON;

	SELECT R.* FROM Researcher R
	JOIN Department D ON(D.Department_Code = R.Department_Code)
	WHERE D.Parent_Department_Code = isnull(@college_code, D.Parent_Department_Code)
	AND (
	Full_Name LIKE '%' + @searched + '%'
	OR First_Name LIKE '%' + @searched + '%'
	OR Middle_Name LIKE '%' + @searched + '%'
	OR Last_Name LIKE '%' + @searched + '%'
	)
END
GO
