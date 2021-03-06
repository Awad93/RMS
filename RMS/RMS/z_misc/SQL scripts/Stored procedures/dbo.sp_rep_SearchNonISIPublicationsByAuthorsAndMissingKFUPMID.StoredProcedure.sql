USE [RMS_DB]
GO
/****** Object:  StoredProcedure [dbo].[sp_rep_SearchNonISIPublicationsByAuthorsAndMissingKFUPMID]    Script Date: 7/24/2016 10:06:50 AM ******/

-- =============================================
-- Author:		Sami Laradji
-- Create date: 7/21/2016
-- Description:	Retrieves all Non-ISI publications where authors field contains last name of faculty but facultyID is missing from authors table
-- =============================================

--  sp_rep_SearchNonISIPublicationsByAuthorsAndMissingKFUPMID 'azzedin', 7040588

CREATE PROCEDURE [dbo].[sp_rep_SearchNonISIPublicationsByAuthorsAndMissingKFUPMID]
	@last_name varchar(100),
	@id int
AS
BEGIN

	SET NOCOUNT ON;

	select pn.* from Publication_NonISI pn
	join Publication_NonISI_Author pna on pn.Publication_NonISI_ID = pna.Publication_NonISI_ID
	where pn.Authors like '%' + @last_name + '%'
	and pna.KFUPMID != @id
	order by Paper_Title

END

GO
