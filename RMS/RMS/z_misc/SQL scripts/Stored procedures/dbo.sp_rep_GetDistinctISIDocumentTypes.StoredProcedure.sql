
/****** Object:  StoredProcedure [dbo].[sp_rep_GetDistinctISIDocumentTypes]    Script Date: 7/21/2016 10:26:27 AM ******/

CREATE procedure  [dbo].[sp_rep_GetDistinctISIDocumentTypes]
 
as
 
select Distinct Document_Type
from Publication_ISI
order by Document_Type asc

GO
