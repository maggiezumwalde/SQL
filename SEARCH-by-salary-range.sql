USE [EmploymentDb]
GO
/****** Object:  StoredProcedure [dbo].[Employee_By_Salary]    Script Date: 7/18/2019 12:00:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER Procedure [dbo].[Employee_By_Salary]
	@lowsalary int,
	@highsalary int
as
begin
	SELECT concat(e.lastname, ',', e.Firstname) as 'Name', j.Description as 'Job', FORMAT(j.Salary, 'C')
	From Employee e
	Join Job j
		on j.id = e.JobId
	Where salary >= @lowsalary and salary <= @highsalary
	Order By Name;
end

GO
EXEC Employee_by_Salary 100000, 130000
GO