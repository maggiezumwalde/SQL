USE [EmploymentDb]
GO
/****** Object:  StoredProcedure [dbo].[Employee_Job_List]    Script Date: 7/18/2019 10:19:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[Employee_Job_List]
	@search nvarchar(30)
AS
BEGIN
	SET @search = concat('%', @search, '%');
	SELECT concat(e.lastname, ',', e.Firstname) as 'Name', j.Description as 'Job', FORMAT(j.Salary, 'C')
	From Employee e
	Join Job j
		on j.id = e.JobId
		WHERE e.Lastname Like @search or e.Firstname like @search or j.Description like @search
		ORDER BY Name;

END
GO
EXEC Employee_Job_List 'Charlie';
GO