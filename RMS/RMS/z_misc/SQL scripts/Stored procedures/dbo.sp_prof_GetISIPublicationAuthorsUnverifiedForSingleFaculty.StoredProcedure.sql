/****** Object:  StoredProcedure [dbo].[sp_prof_GetISIPublicationAuthorsUnverifiedForSingleFaculty]    Script Date: 7/26/2016 1:24:50 PM ******/

-- =============================================
-- Author:		Sami Laradji
-- Create date: 7/25/2016
-- Description:	Retrieves all Unverified ISI Publication Author entries with a given KFUPM ID and
-- =============================================

-- sp_prof_GetISIPublicationAuthorsUnverifiedForSingleFaculty 6891540

CREATE PROCEDURE [dbo].[sp_prof_GetISIPublicationAuthorsUnverifiedForSingleFaculty]
	@kfupmid int
AS
BEGIN

	SET NOCOUNT ON;


    SELECT P.Paper_Title, 
		P.Authors,
		A.WOS_Number,		
		A.Publication_ISI_Author_ID,
		A.Number_Of_Authors,
		A.Authorship_Order, 
		A.Project_Code,
		A.isCorresponding_Author  
	FROM Publication_ISI_Author A
	JOIN Publication_ISI P ON A.WOS_Number = P.WOS_Number
	WHERE KFUPMID = @kfupmid
	and Verified = 0
	ORDER BY A.UPDATEDBY DESC, A.CreatedBy DESC
END

GO
