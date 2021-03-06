
/****** Object:  StoredProcedure [dbo].[sp_rep_GetPatentsIssuedByDepartment]    Script Date: 7/21/2016 10:26:28 AM ******/

CREATE PROCEDURE [dbo].[sp_rep_GetPatentsIssuedByDepartment] 
	@dept_code varchar(10) = null
AS
BEGIN

	SET NOCOUNT ON;

	SELECT P.* FROM Patent_Issued P
	JOIN Patent_Issued_Author A ON A.Patent_Issued_ID = P.Patent_Issued_ID
	JOIN Researcher R ON R.KFUPMID = A.KFUPMID
	WHERE R.Department_Code = ISNULL(@dept_code, R.Department_Code)
END
GO
