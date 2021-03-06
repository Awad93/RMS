USE [RMS_DB]
GO
/****** Object:  StoredProcedure [dbo].[sp_rep_GetFacultyByID]    Script Date: 7/24/2016 10:06:50 AM ******/

-- =============================================
-- Author:		Sami Laradji
-- Create date: 7/21/2016
-- Description:	Retrieves a single researcher using their unique KFUPM ID
-- =============================================

-- [sp_rep_GetFacultyByID] 6900783

CREATE PROCEDURE [dbo].[sp_rep_GetFacultyByID]
	@id int
AS
BEGIN

	SET NOCOUNT ON;

	SELECT * from researcher R
	where KFUPMID = @id
END

GO
