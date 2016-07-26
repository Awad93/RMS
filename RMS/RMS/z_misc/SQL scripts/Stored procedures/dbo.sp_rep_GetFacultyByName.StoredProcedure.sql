
/****** Object:  StoredProcedure [dbo].[sp_rep_GetFacultyByName]    Script Date: 7/21/2016 10:26:27 AM ******/

CREATE PROCEDURE [dbo].[sp_rep_GetFacultyByName] 
	@searched varchar(255) = null	
AS
BEGIN

	SET NOCOUNT ON;

	SELECT * FROM Researcher
	WHERE Full_Name LIKE '%' + @searched + '%'
	OR First_Name LIKE '%' + @searched + '%'
	OR Middle_Name LIKE '%' + @searched + '%'
	OR Last_Name LIKE '%' + @searched + '%'
END
GO
