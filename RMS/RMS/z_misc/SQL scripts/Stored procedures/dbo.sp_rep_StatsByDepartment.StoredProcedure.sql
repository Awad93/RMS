
/****** Object:  StoredProcedure [dbo].[sp_rep_StatsByDepartment]    Script Date: 7/21/2016 10:26:28 AM ******/

-- select * from rms_Researchers where kfupmid = 7120281

-- select * from rms_books_authored where book_authored_id = 46

-- select * from rms_books_authored where publicationyear between 2015 and 2016

-- select * from rms_conferences where kfupmid = 7120281

-- select * from rms_patents_issued order by yearofissue
-- select * from Department where Department_Type='CLG'

-- sp_rep_StatsByCollege 'CCSE', 2008, 2016

create PROCEDURE [dbo].[sp_rep_StatsByDepartment]
@dept_code varchar(10),
@start_year int = null,
@end_year int = null
AS
BEGIN

SET NOCOUNT ON;

SELECT isnull(t1.Year, isnull(t2.Publication_Year, isnull(t3.Publication_Year,t4.Publication_Year))) AS Year, 
isnull(t1.Conferences,0) AS Conferences, 
isnull(t2.Books,0) AS Books,
isnull(t3.ISI_Publications,0) AS ISI_Publications,
isnull(t4.NonISI_Publications,0) AS NonISI_Publications,
isnull(t3.Publication_Points,0) AS Publication_Points,
isnull(t5.Graduate_Students,0) AS Graduate_Students,
isnull(t6.Projects,0) AS Projects,
isnull(t6.Funds,0) AS Project_Funds,
isnull(t7.Patents,0) AS Patents
FROM (
SELECT C.Year, COUNT(*) AS Conferences
FROM Conference C
inner join Researcher r on C.KFUPMID = r.KFUPMID
where r.Department_Code = @dept_code
GROUP BY C.Year
) t1
FULL JOIN (
SELECT B.Publication_Year, COUNT(*) AS Books
FROM Book_Authored B
inner join Book_Authored_Author ba on B.Book_Authored_ID = ba.Book_Authored_ID
inner join Researcher r on ba.KFUPMID = r.KFUPMID
where r.Department_Code = @dept_code
GROUP BY B.Publication_Year
) t2
on(t1.Year = t2.Publication_Year)
FULL JOIN (
SELECT P.Publication_Year, COUNT(*) AS ISI_Publications, SUM(PA.Publication_Points) AS Publication_Points
FROM Publication_ISI P Join Publication_ISI_Author PA on P.WOS_Number = PA.WOS_Number
inner join Researcher r on PA.KFUPMID = r.KFUPMID
where r.Department_Code = @dept_code
GROUP BY P.Publication_Year
) t3
on(t1.Year = t3.Publication_Year OR t2.Publication_Year = t3.Publication_Year)
FULL JOIN (
SELECT P.Publication_Year, COUNT(*) AS NonISI_Publications
FROM Publication_NonISI P
inner join Researcher r on P.KFUPMID = r.KFUPMID
where r.Department_Code = @dept_code
GROUP BY P.Publication_Year
) t4
on(t1.Year = t4.Publication_Year OR t2.Publication_Year = t4.Publication_Year OR t3.Publication_Year = t4.Publication_Year)
FULL JOIN (
SELECT G.Year, COUNT(*) AS Graduate_Students
FROM GraduateStudent G
inner join Researcher r on G.AdvisorID = r.KFUPMID
where r.Department_Code = @dept_code
GROUP BY G.Year
) t5
on(t1.Year = t5.Year OR t2.Publication_Year = t5.Year OR t3.Publication_Year = t5.Year OR t4.Publication_Year = t5.Year)
FULL JOIN (
SELECT P.Year, COUNT(*) AS Projects, SUM(P.Budget) AS Funds
FROM Project P
inner join Project_Publication pp on P.Project_ID = pp.Project_ID
inner join Publication_ISI_Author pa on pp.WOS_Number = pa.WOS_Number
inner join Researcher r on pa.KFUPMID = r.KFUPMID
where r.Department_Code = @dept_code
GROUP BY P.Year
) t6
on(t1.Year = t6.Year OR t2.Publication_Year = t6.Year OR t3.Publication_Year = t6.Year OR t4.Publication_Year = t6.Year OR t5.Year = t6.Year)
FULL JOIN (
SELECT P.Year_Of_Issue, COUNT(*) AS Patents
FROM Patent_Issued P
inner join Patent_Issued_Author pa on P.Patent_Issued_ID = pa.Patent_Issued_ID
inner join Researcher r on pa.KFUPMID = r.KFUPMID
where r.Department_Code = @dept_code
GROUP BY P.Year_Of_Issue
) t7
on(t1.Year = t7.Year_Of_Issue OR t2.Publication_Year = t7.Year_Of_Issue OR t3.Publication_Year = t7.Year_Of_Issue OR t4.Publication_Year = t7.Year_Of_Issue OR t5.Year = t7.Year_Of_Issue OR t6.Year = t7.Year_Of_Issue)
WHERE isnull(t1.Year, isnull(t2.Publication_Year, isnull(t3.Publication_Year,t4.Publication_Year))) between isnull(@start_year, 2006) AND isnull(@end_year, YEAR(getdate()))
ORDER BY isnull(t1.Year, isnull(t2.Publication_Year, isnull(t3.Publication_Year,t4.Publication_Year))) DESC
END


GO
