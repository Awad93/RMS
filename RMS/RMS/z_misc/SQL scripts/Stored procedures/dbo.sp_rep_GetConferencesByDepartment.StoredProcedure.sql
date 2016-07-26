USE [RMS_DB]
GO
/****** Object:  StoredProcedure [dbo].[sp_rep_GetConferencesByDepartment]    Script Date: 7/24/2016 1:32:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_rep_GetConferencesByDepartment]
	-- Add the parameters for the stored procedure here
	@dept_code varchar(10) = null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT C.* FROM Conference C
	JOIN Researcher R ON C.KFUPMID = R.KFUPMID	
	WHERE R.Department_Code = ISNULL(@dept_code, R.Department_Code)
	ORDER BY Year DESC, Conference_Name;
END
GO
