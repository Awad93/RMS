USE [RMS_DB]
GO
/****** Object:  StoredProcedure [dbo].[sp_rep_AddNonISIPublicationAsUnapproved]    Script Date: 7/24/2016 10:06:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Sami Laradji
-- Create date: 7/24/2016
-- Description:	Adds a new record to Non-ISI Publications table with the Approved field set to default (i.e. 0). Also adds a new record for an author using a KFUPM ID
-- =============================================
CREATE PROCEDURE [dbo].[sp_rep_AddNonISIPublicationAsUnapproved]
(
	@title nvarchar(1000),
    @authors nvarchar(1000),
	@year int,
	@doi nvarchar(1000),
	@kfupmid int
)
AS
IF EXISTS(SELECT 'True' FROM Publication_NonISI WHERE @title = Paper_Title)
BEGIN
  --This means it exists, return it to ASP and tell us
  SELECT 'This record already exists!'
END
ELSE
BEGIN
  --This means the record isn't in there already, let's go ahead and add it
  SELECT 'Record Added'
  INSERT into Publication_NonISI(Paper_Title, Authors, Publication_Year, DOI)
  values(@title, @authors, @year, @doi)

  declare @pubid int = @@IDENTITY
  INSERT into Publication_NonISI_Author(Publication_NonISI_ID, KFUPMID)
  values(@pubid, @kfupmid)
END
GO
