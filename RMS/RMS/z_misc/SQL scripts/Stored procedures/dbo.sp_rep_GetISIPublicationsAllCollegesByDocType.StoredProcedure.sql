
/****** Object:  StoredProcedure [dbo].[sp_rep_GetISIPublicationsAllCollegesByDocType]    Script Date: 7/21/2016 10:26:27 AM ******/

-- sp_rep_GetISIPublicationsAllCollegesByDocType 0 , 2008 , 2014
 
create procedure [dbo].[sp_rep_GetISIPublicationsAllCollegesByDocType]
@doctype int = null,
@fromYear int = null,
@toYear int = null
 
AS
 
select *
from Publication_ISI pubISI
where 1=1 
and Publication_Year >= isnull(@fromYear,2006)
and Publication_Year <= isnull(@toYear, YEAR(getdate()))
and
       (@doctype= 0 and pubISI.Document_Type = pubISI.Document_Type
         OR @doctype= 1 and pubISI.Document_Type in ('Article; Proceedings Paper','Article')    
         OR @doctype= 2 and pubISI.Document_Type in ('Proceedings Paper')
       )

GO
