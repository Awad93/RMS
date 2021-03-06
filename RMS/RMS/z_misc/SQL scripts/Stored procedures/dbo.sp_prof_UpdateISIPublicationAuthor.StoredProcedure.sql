USE [RMS_DB]
GO
/****** Object:  StoredProcedure [dbo].[sp_prof_UpdateISIPublicationAuthor]    Script Date: 7/25/2016 4:46:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Sami Laradji
-- Create date: 7/25/2016
-- Description:	Updates ISI Publication Author entry's Corresponding Author, Authorship Order, and Project Code
-- =============================================
CREATE PROCEDURE [dbo].[sp_prof_UpdateISIPublicationAuthor]
	@id int,	
	@is_corresponding_author bit = null,
	@authorship_order int = null,
	@project_code varchar(100) = null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	UPDATE Publication_ISI_Author
	SET isCorresponding_Author = isnull(@is_corresponding_author, isCorresponding_Author),
		Authorship_Order = isnull(@authorship_order, Authorship_Order), 
		Project_Code = isnull(@project_code, Project_Code)
	WHERE Publication_ISI_Author_ID = @id

END

GO
