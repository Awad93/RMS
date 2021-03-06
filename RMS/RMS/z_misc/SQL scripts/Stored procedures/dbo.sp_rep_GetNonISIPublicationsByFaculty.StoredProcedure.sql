
/****** Object:  StoredProcedure [dbo].[sp_rep_GetNonISIPublicationsByFaculty]    Script Date: 7/21/2016 11:15:40 AM ******/

CREATE PROCEDURE [dbo].[sp_rep_GetNonISIPublicationsByFaculty] 
	@id int = null
AS
BEGIN

	SET NOCOUNT ON;

	SELECT DISTINCT P.* FROM Publication_NonISI_Author A
	JOIN Publication_NonISI P on(P.Publication_NonISI_ID = A.Publication_NonISI_ID)
	Join Researcher r on a.KFUPMID = r.KFUPMID
	WHERE A.KFUPMID = isnull(@id, A.KFUPMID)
	AND  r.Status = 'Active'
	ORDER BY P.Publication_Year
END



