
/****** Object:  StoredProcedure [dbo].[sp_rep_GetDepartmentsByCollege]    Script Date: 7/21/2016 10:26:27 AM ******/

CREATE PROCEDURE [dbo].[sp_rep_GetDepartmentsByCollege]
	-- Add the parameters for the stored procedure here
	@college_code varchar(10) = null
AS
BEGIN
	SET NOCOUNT ON;

	SELECT * FROM Department
	WHERE Parent_Department_Code = isnull(@college_code, Parent_Department_Code)
	ORDER BY Department_Name ASC
END
GO
