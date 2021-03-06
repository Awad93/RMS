
/****** Object:  StoredProcedure [dbo].[sp_rep_GetPatentsIssuedByFaculty]    Script Date: 7/21/2016 10:26:28 AM ******/

ALTER PROCEDURE [dbo].[sp_rep_GetPatentsIssuedByFaculty] 
	@id int = null
AS
BEGIN

	SET NOCOUNT ON;

	SELECT P.* FROM Patent_Issued P
	JOIN Patent_Issued_Author A ON A.Patent_Issued_ID = P.Patent_Issued_ID
	JOIN Researcher R on A.KFUPMID = R.KFUPMID
	WHERE A.KFUPMID = isnull(@id, A.KFUPMID)
	AND R.Status='Active'
END

GO
