
/****** Object:  StoredProcedure [dbo].[sp_rep_GetISIPublicationsByFaculty]    Script Date: 7/21/2016 10:26:27 AM ******/

CREATE PROCEDURE [dbo].[sp_rep_GetISIPublicationsByFaculty] 
	@id int = null
AS
BEGIN

	SET NOCOUNT ON;

	SELECT P.* FROM Publication_ISI_Author A
	JOIN Publication_ISI P on(A.WOS_Number = P.WOS_Number)
	WHERE A.KFUPMID = isnull(@id, KFUPMID)
	ORDER BY P.Publication_Year DESC, P.Publication_Month DESC
END
GO
