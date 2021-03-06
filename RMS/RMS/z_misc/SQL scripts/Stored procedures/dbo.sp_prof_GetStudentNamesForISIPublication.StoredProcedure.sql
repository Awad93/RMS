/****** Object:  StoredProcedure [dbo].[sp_prof_GetStudentNamesForISIPublication]    Script Date: 7/26/2016 1:24:50 PM ******/

-- =============================================
-- Author:		Sami Laradji
-- Create date: 7/26/2016
-- Description:	Retrieve all students' names of students involved in an ISI publication
-- =============================================
CREATE PROCEDURE [dbo].[sp_prof_GetStudentNamesForISIPublication] 
	@wos_number varchar(100)
AS
BEGIN	
	SET NOCOUNT ON;
    
	SELECT Student_Name FROM Student_Involvement S
	JOIN Publication_ISI P
	ON P.WOS_Number = S.WOS_Number
	WHERE S.WOS_Number = @wos_number
END

GO
