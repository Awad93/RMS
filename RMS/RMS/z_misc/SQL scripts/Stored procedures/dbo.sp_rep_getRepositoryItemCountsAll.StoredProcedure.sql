
/****** Object:  StoredProcedure [dbo].[sp_rep_getRepositoryItemCountsAll]    Script Date: 7/24/2016 11:42:15 AM ******/


-- [sp_rep_getRepositoryItemCountsByDepartment] 'MATH'
CREATE PROCEDURE [dbo].[sp_rep_getRepositoryItemCountsAll]

AS
BEGIN
select t1.Publication_ISI_Count, t2.Publication_NonISI_Count, t3.Book_Count, t4.Patent_Count, t5.Conference_Count, t6.Project_Count
from(
select Count(distinct p.Publication_ISI_ID) as Publication_ISI_Count
from Publication_ISI p) t1 
join(
select Count(distinct p.Publication_NonISI_ID) as Publication_NonISI_Count
from Publication_NonISI p) t2 on 1=1
join(
select Count(distinct b.Book_Authored_ID) as Book_Count
from Book_Authored b) t3 on 1=1
join(
select Count(distinct p.Patent_Issued_ID) as Patent_Count
from Patent_Issued p) t4 on 1=1
join(
select Count(distinct c.Conference_ID) as Conference_Count
from Conference c) t5 on 1=1
join(
select Count(distinct pr.Project_ID) as Project_Count
from Project pr) t6 on 1=1
END

GO
