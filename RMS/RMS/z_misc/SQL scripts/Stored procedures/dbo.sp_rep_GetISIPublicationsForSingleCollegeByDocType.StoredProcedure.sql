
/****** Object:  StoredProcedure [dbo].[sp_rep_GetISIPublicationsForSingleCollegeByDocType]    Script Date: 7/21/2016 10:26:27 AM ******/

-- [sp_rep_GetISIPublicationsForSingleCollegeByDocType] 'cs', 1, 2000, 2016
 
CREATE  procedure [dbo].[sp_rep_GetISIPublicationsForSingleCollegeByDocType]
 
@college_code varchar(20) ,
@doctype int = null,
@fromYear int = null,
@toYear int = null
AS
 
select *
from Publication_ISI pubISI
inner join Publication_ISI_Author pubISIAuth on pubISI.WOS_Number = pubISIAuth.WOS_Number
inner join Researcher r on r.KFUPMID = pubISIAuth.KFUPMID
inner join Department d on d.Department_Code = r.Department_Code
where 1=1
and Publication_Year >= isnull(@fromYear,2006)
and Publication_Year <= isnull(@toYear, YEAR(getdate()))
and d.Parent_Department_Code = @college_code
and
       (@doctype= 0 and pubISI.Document_Type = pubISI.Document_Type
         OR @doctype= 1 and pubISI.Document_Type in ('Article; Proceedings Paper','Article')    
         OR @doctype= 2 and pubISI.Document_Type in ('Proceedings Paper')
       )
order by pubISI.Publication_Year, pubISI.Paper_Title

GO
