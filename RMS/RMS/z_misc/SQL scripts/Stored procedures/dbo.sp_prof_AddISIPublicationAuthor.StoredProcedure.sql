USE [RMS_DB]
GO
/****** Object:  StoredProcedure [dbo].[sp_prof_AddISIPublicationAuthor]    Script Date: 7/26/2016 2:02:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_prof_AddISIPublicationAuthor]

@id int,
@WOSNumber varchar(100),
@numberOfAuthors int

AS
BEGIN
	
	insert into Publication_ISI_Author(KFUPMID, WOS_Number, Number_Of_Authors)
	values (@id, @WOSNumber, @numberOfAuthors)
END

GO
