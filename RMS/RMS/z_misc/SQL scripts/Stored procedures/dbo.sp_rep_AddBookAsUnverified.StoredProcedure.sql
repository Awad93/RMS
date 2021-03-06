USE [RMS_DB]
GO
/****** Object:  StoredProcedure [dbo].[sp_rep_AddBookAsUnverified]    Script Date: 7/24/2016 10:06:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Sami Laradji
-- Create date: 7/21/2016
-- Description:	Adds a new record to the book table with the Verified field set to default (i.e. 0).  Also adds a new record for an author using a KFUPM ID
-- =============================================

CREATE PROCEDURE [dbo].[sp_rep_AddBookAsUnverified]
(
	@title nvarchar(1000),
    @authors nvarchar(1000),
	@year int,
	@publisher nvarchar(1000),
	@country nvarchar(1000),
	@project_code nvarchar(1000),
	@funding_year int,
	@completed bit,
	@language nvarchar(100),
	@kfupmid int
)
AS
IF EXISTS(SELECT 'True' FROM Book_Authored WHERE @title = Book_Title)
BEGIN
  --This means it exists, return it to ASP and tell us
  SELECT 'This record already exists!'
END
ELSE
BEGIN
  --This means the record isn't in there already, let's go ahead and add it
  SELECT 'Record Added'
  INSERT into Book_Authored(Book_Title, Authors, Publication_Year, Publisher, Country, Project_Code, Funding_Year, isCompleted, Language)
  values(@title, @authors, @year, @publisher, @country, @project_code, @funding_year, @completed, @language) 

  declare @bookid int = @@IDENTITY
  INSERT into Book_Authored_Author(Book_Authored_ID, KFUPMID)
  values(@bookid, @kfupmid)
END
GO
