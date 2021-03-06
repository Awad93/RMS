
/****** Object:  StoredProcedure [dbo].[sp_rep_SearchFacultyByName]    Script Date: 7/21/2016 10:26:28 AM ******/

CREATE PROCEDURE [dbo].[sp_rep_SearchFacultyByName] 
	@search_string varchar(255) = null
AS
BEGIN

	SET NOCOUNT ON;

	SELECT R.* FROM Researcher R
	WHERE Full_Name LIKE '%' + @search_string + '%'
	OR First_Name LIKE '%' + @search_string + '%'
	OR Middle_Name LIKE '%' + @search_string + '%'
	OR Last_Name LIKE '%' + @search_string + '%'	
END
GO
