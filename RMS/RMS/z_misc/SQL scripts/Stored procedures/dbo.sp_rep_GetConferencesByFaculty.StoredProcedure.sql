USE [RMS_DB]
GO
/****** Object:  StoredProcedure [dbo].[sp_rep_GetConferencesByFaculty]    Script Date: 7/24/2016 1:32:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_rep_GetConferencesByFaculty]
	-- Add the parameters for the stored procedure here
	@id int = null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT C.* FROM Conference C
	WHERE KFUPMID = isnull(@id, KFUPMID)
	ORDER BY Year DESC, Conference_Name;
END
GO
