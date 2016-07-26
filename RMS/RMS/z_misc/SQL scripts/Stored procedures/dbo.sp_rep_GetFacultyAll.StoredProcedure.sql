
/****** Object:  StoredProcedure [dbo].[sp_rep_GetFacultyAll]    Script Date: 7/21/2016 10:26:27 AM ******/

CREATE PROCEDURE [dbo].[sp_rep_GetFacultyAll]
	@first_char varchar(1) = null
AS
BEGIN
	SET @first_char = coalesce(@first_char,'');

	SELECT * FROM Researcher
	WHERE Last_Name LIKE ''+@first_char+'%'
	ORDER BY Full_Name
END
GO
