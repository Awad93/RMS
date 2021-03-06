
/****** Object:  StoredProcedure [dbo].[sp_rep_GetCitationStatsForFacultySingleCollegeByYear]    Script Date: 7/21/2016 10:26:27 AM ******/

-- sp_rep_GetCitationStatsForFacultySingleCollegeByYear 'CCSE' 

CREATE PROCEDURE [dbo].[sp_rep_GetCitationStatsForFacultySingleCollegeByYear] 
	@college_code varchar(10) = null,
	@start_year int = null,
	@end_year int = null
		
	AS
BEGIN
	SET NOCOUNT ON;

	declare @cnt_year  varchar(10) = isnull(@start_year,2006),	
		@query varchar(max) = ''

	set @end_year = isnull(@end_year, YEAR(GETDATE()))
	
	set @query = 
	'select r.kfupmid, full_name'
	while @cnt_year <= @end_year 
	begin

	set @query +=' 
	,isnull(sum(case when Publication_Year = ' + @cnt_year + ' then Time_Cited end),0) y' + @cnt_year	
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

exec (@query)
END
GO
