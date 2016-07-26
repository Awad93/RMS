-- Created by Imran 
-- Created on 25-07-2016

--function: to get Rank by Type (faculty)
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

CREATE proc sp_prof_GetRankByType 
@Rank_type varchar(100) = null
AS


SELECT * 
  FROM [Rank]
  where Rank_type = isnull(@Rank_type, Rank_type)
  order by rank_title

