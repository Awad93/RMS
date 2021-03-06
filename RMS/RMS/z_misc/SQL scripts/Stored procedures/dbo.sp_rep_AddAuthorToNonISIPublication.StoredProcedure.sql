USE [RMS_DB]
GO
/****** Object:  StoredProcedure [dbo].[sp_rep_AddAuthorToNonISIPublication]    Script Date: 7/24/2016 10:06:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Sami Laradji
-- Create date: 7/24/2016
-- Description:	Adds a new author for a non-ISI publication, with Publication_NonISI_ID as a FK
-- =============================================

CREATE PROCEDURE [dbo].[sp_rep_AddAuthorToNonISIPublication]
(
	@kfupmid int,
	@publicationid int
)
AS

  
  INSERT into Publication_NonISI_Author(Publication_NonISI_ID, KFUPMID)
  values(@publicationid, @kfupmid)
  

GO
