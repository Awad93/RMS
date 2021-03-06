
/****** Object:  StoredProcedure [dbo].[sp_rep_GetPatentsIssuedByCollege]    Script Date: 7/21/2016 10:26:28 AM ******/

CREATE PROCEDURE [dbo].[sp_rep_GetPatentsIssuedByCollege] 
	@college_code varchar(10) = null
AS
BEGIN

	SET NOCOUNT ON;

	SELECT P.* FROM Patent_Issued P
	JOIN Patent_Issued_Author A ON A.Patent_Issued_ID = P.Patent_Issued_ID
	JOIN Researcher R ON R.KFUPMID = A.KFUPMID
	JOIN Department D ON D.Department_Code = R.Department_Code
	WHERE D.Parent_Department_Code = ISNULL(@college_code, D.Parent_Department_Code)
END
GO
