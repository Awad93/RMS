USE [RMS_DB]
GO
/****** Object:  StoredProcedure [dbo].[sp_rep_GetBooksAll]    Script Date: 7/21/2016 10:26:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_rep_GetBooksAll]
	-- Add the parameters for the stored procedure here
AS
BEGIN

	SET NOCOUNT ON;

	SELECT * FROM Book_Authored
	ORDER BY Publication_Year DESC, Book_Title;
END


GO
