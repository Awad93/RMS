USE [RMS_DB]
GO
/****** Object:  StoredProcedure [dbo].[sp_rep_AddAuthorToBook]    Script Date: 7/24/2016 10:06:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Sami Laradji
-- Create date: 7/24/2016
-- Description:	Adds a new author for a book, with Book_Authored_ID as a FK
-- =============================================

CREATE PROCEDURE [dbo].[sp_rep_AddAuthorToBook]
(
	@kfupmid int,
	@bookid int
)
AS

  
  INSERT into Book_Authored_Author(Book_Authored_ID, KFUPMID)
  values(@bookid, @kfupmid)

GO
