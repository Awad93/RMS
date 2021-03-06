
/****** Object:  StoredProcedure [dbo].[sp_rep_GetISIPublicationsAll]    Script Date: 7/21/2016 10:26:27 AM ******/

CREATE PROCEDURE [dbo].[sp_rep_GetISIPublicationsAll]
@docType int = null
AS
BEGIN

       SET NOCOUNT ON;
 
       if(@docType is null)
             SET @docType = 0
 
       SELECT DISTINCT P.* FROM Publication_ISI P
       WHERE
       (@doctype= 0 and P.Document_Type = P.Document_Type
         OR @doctype= 1 and P.Document_Type in ('Article; Proceedings Paper','Article')    
         OR @doctype= 2 and P.Document_Type in ('Proceedings Paper')
       )
       AND Publication_Year >= 2006
       ORDER BY P.Publication_Year, Paper_Title
END
GO
