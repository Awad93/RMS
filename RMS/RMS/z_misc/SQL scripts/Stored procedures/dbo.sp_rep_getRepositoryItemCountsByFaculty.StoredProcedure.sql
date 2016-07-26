
/****** Object:  StoredProcedure [dbo].[sp_rep_getRepositoryItemCountsByFaculty]    Script Date: 7/24/2016 11:42:15 AM ******/

-- [sp_rep_getRepositoryItemCountsByDepartment] 'MATH'
CREATE PROCEDURE [dbo].[sp_rep_getRepositoryItemCountsByFaculty]

@id int 

AS
BEGIN
select t1.Publication_ISI_Count, t2.Publication_NonISI_Count, t3.Book_Count, t4.Patent_Count, t5.Conference_Count, t6.Project_Count
from(
select Count(distinct p.Publication_ISI_ID) as Publication_ISI_Count
from Publication_ISI p
inner join Publication_ISI_Author pa on p.WOS_Number = pa.WOS_Number
where pa.KFUPMID = @id
) t1 
join(
select Count(distinct p.Publication_NonISI_ID) as Publication_NonISI_Count
from Publication_NonISI p
where p.KFUPMID = @id) t2 on 1=1
join(
select Count(distinct b.Book_Authored_ID) as Book_Count
from Book_Authored b
inner join Book_Authored_Author ba on b.Book_Authored_ID = ba.Book_Authored_ID
where ba.KFUPMID = @id) t3 on 1=1
join(
select Count(distinct p.Patent_Issued_ID) as Patent_Count
from Patent_Issued p
inner join Patent_Issued_Author pa on p.Patent_Issued_ID = pa.Patent_Issued_ID
where pa.KFUPMID = @id) t4 on 1=1
join(
select Count(distinct c.Conference_ID) as Conference_Count
from Conference c
where c.KFUPMID = @id) t5 on 1=1
join(
select Count(distinct pr.Project_ID) as Project_Count
from Project pr
inner join Project_Publication pp on pr.Project_ID = pp.Project_ID
inner join Publication_ISI_Author pa on pp.WOS_Number = pa.WOS_Number
where pa.KFUPMID = @id) t6 on 1=1
END

GO
