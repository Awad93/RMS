
/****** Object:  StoredProcedure [dbo].[sp_rep_GetPatentsIssuedAll]    Script Date: 7/21/2016 10:26:28 AM ******/

CREATE PROCEDURE [dbo].[sp_rep_GetPatentsIssuedAll] 
AS
BEGIN

	SET NOCOUNT ON;

	SELECT * FROM Patent_Issued
	ORDER BY Year_Of_Issue
END
GO
