USE [RMS_DB]
GO
/****** Object:  StoredProcedure [dbo].[sp_rep_SearchBooksByAuthorsAndMissingKFUPMID]    Script Date: 7/24/2016 1:32:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Sami Laradji
-- Create date: 7/24/2016
-- Description:	Retrieves all Books where authors field contains last name of faculty but facultyID is missing from authors table
-- =============================================

-- sp_rep_SearchBooksByAuthorsAndMissingKFUPMID 'azzedin', 7040588

CREATE PROCEDURE [dbo].[sp_rep_SearchBooksByAuthorsAndMissingKFUPMID]
	-- Add the parameters for the stored procedure here
	@last_name varchar(100),
	@id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select b.* from Book_Authored b
	join Book_Authored_Author ba on b.Book_Authored_ID = ba.Book_Authored_Author_ID
	where b.Authors like '%' + @last_name + '%'
	and ba.KFUPMID != @id
	order by Book_Title

END

GO
