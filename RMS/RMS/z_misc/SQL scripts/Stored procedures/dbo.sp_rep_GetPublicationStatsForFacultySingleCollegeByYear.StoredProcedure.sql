
/****** Object:  StoredProcedure [dbo].[sp_rep_GetPublicationStatsForFacultySingleCollegeByYear]    Script Date: 7/21/2016 10:26:28 AM ******/

-- [sp_rep_GetPublicationStatsForFacultySingleCollegeByYear] 'CCSE' 

CREATE PROCEDURE [dbo].[sp_rep_GetPublicationStatsForFacultySingleCollegeByYear] 
	@college_code varchar(10) = null,
	@start_year int = null,
	@end_year int = null
		
	AS
BEGIN

	SET NOCOUNT ON;

    -- Insert statements for procedure here
	declare @cnt_year  varchar(10) = isnull(@start_year,2006),	
		@query varchar(max) = ''

	set @end_year = isnull(@end_year, YEAR(GETDATE()))

	set @query = 
	'select r.kfupmid, full_name'
	while @cnt_year <= @end_year 
	begin

	set @query +=' 
	,count(case when Publication_Year = ' + @cnt_year + ' then Publication_ISI_ID end) y' + @cnt_year	
	set @cnt_year = @cnt_year + 1
	end
	
	set @query += ' 
	, r.department_code 
	from researcher r	
	join department d 
	on d.department_code = r.department_code
	join Publication_ISI_Author a
	on a.kfupmid = r.KFUPMID
	join Publication_ISI p
	on p.WOS_Number = a.WOS_Number
	where d.parent_department_code = ''' + @college_code + '''
	group by r.KFUPMID, full_name, r.department_code	
	'
EXEC (@query)
END
GO
