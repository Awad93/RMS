
/****** Object:  StoredProcedure [dbo].[sp_rep_GetCollegesAll]    Script Date: 7/21/2016 10:26:27 AM ******/

CREATE PROCEDURE [dbo].[sp_rep_GetCollegesAll]
	-- Add the parameters for the stored procedure here
AS
BEGIN

	SET NOCOUNT ON;

	SELECT * FROM Department
	WHERE Department_Type='CLG'
	ORDER BY Department_Name ASC
END
GO
