
/****** Object:  StoredProcedure [dbo].[sp_rep_GetPublicationStatsForFacultyAllCollegesByYear]    Script Date: 7/21/2016 10:26:28 AM ******/

CREATE PROCEDURE [dbo].[sp_rep_GetPublicationStatsForFacultyAllCollegesByYear] 
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
	,count(case when Publication_Year = ' + @cnt_year + ' then Publication_ISI_ID end) y' + @cnt_year	
	set @cnt_year = @cnt_year + 1
	end
	
	set @query += '
	, r.department_code 
	from researcher r
	join Publication_ISI_Author a
	on a.kfupmid = r.KFUPMID
	join Publication_ISI p
	on p.WOS_Number = a.WOS_Number
	group by r.KFUPMID, full_name, r.department_code
	'

exec (@query)
END
GO
