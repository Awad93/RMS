USE [RMS_DB]
GO
/****** Object:  StoredProcedure [dbo].[sp_prof_AddStudentInvolvement]    Script Date: 7/26/2016 1:24:50 PM ******/

-- =============================================
-- Author:		Sami Laradji
-- Create date: 26/7/2016
-- Description:	Add a new record to Student Involvement table
-- =============================================
CREATE PROCEDURE [dbo].[sp_prof_AddStudentInvolvement]
	@wos_number varchar(100),
	@name varchar(1000)
	
AS
BEGIN
	SET NOCOUNT ON;

	INSERT INTO Student_Involvement(WOS_Number, Student_Name)
	values(@wos_number, @name)
END

GO
