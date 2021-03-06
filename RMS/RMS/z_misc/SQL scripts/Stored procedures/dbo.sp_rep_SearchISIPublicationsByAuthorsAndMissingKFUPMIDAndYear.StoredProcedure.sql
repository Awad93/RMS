USE [RMS_DB]
GO
/****** Object:  StoredProcedure [dbo].[sp_rep_SearchISIPublicationsByAuthorsAndMissingKFUPMIDAndYear]    Script Date: 7/26/2016 2:01:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================

-- [sp_rep_SearchISIPublicationsByAuthorsAndMissingKFUPMID] 'azzedin', 7040588
CREATE PROCEDURE [dbo].[sp_rep_SearchISIPublicationsByAuthorsAndMissingKFUPMIDAndYear]
	-- Add the parameters for the stored procedure here
	@year int,
	@last_name varchar(100),
	@id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select distinct p.* from Publication_ISI p
	inner join Publication_ISI_Author pa on p.WOS_Number = pa.WOS_Number
	where p.Publication_Year = @year
	and p.Authors like '%' + @last_name + '%'
	and pa.KFUPMID != @id
	order by Paper_Title

END


GO
