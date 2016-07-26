-- Created by Imran 
-- Created on 25-07-2016

--function: to update one ROW in the RESEARCHER table 
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


CREATE proc sp_prof_UpdateResearcherInfo
@Kfupmid int ,
@Status nvarchar(255) = null ,
@Full_Name nvarchar(255) = null ,
@First_Name nvarchar(255)  = null ,
@Middle_Name nvarchar(255) = null ,
@Last_Name nvarchar(255) = null ,
@Department_Code nvarchar(255) = null ,
@Academic_Rank nvarchar(255) = null ,
@Actual_Job nvarchar(255) = null ,
@Email nvarchar(255) = null ,
@UserID nvarchar(255) = null ,
@WOS_ResearcherID nvarchar(255) = null ,
@Joining_Year nvarchar(255) = null ,
@Joining_Date nvarchar(255) = null ,
@Phone nvarchar(255) = null ,
@UpdatedBy nvarchar(255) 
AS
UPDATE [dbo].[Researcher]
   SET [Status] = isnull(@Status, [Status])
      ,[Full_Name] = isnull(@Full_Name, [Full_Name])
      ,[First_Name] = isnull(@First_Name, [First_Name])
      ,[Middle_Name] = isnull(@Middle_Name, [Middle_Name])
      ,[Last_Name] = isnull(@Last_Name, [Last_Name])
      ,[Department_Code] = isnull(@Department_Code, [Department_Code])
      ,[Academic_Rank] = isnull(@Academic_Rank, [Academic_Rank])
      ,[Actual_Job] = isnull(@Actual_Job, [Actual_Job])
      ,[Email] = isnull(@Email, [Email])
      ,[UserID] = isnull(@UserID, [UserID])
      ,[WOS_ResearcherID] = isnull(@WOS_ResearcherID, [WOS_ResearcherID])
      ,[Joining_Year] = isnull(@Joining_Year, [Joining_Year])
      ,[Joining_Date] = isnull(@Joining_Date, [Joining_Date])
      ,[Phone] = isnull(@Phone, [Phone])
      ,[UpdatedOn] = (getdate())
      ,[UpdatedBy] = @UpdatedBy
 WHERE kfupmID = @Kfupmid;

