USE [EmploymentDb]
GO
/****** Object:  StoredProcedure [dbo].[Employees_by_firstnames]    Script Date: 7/18/2019 2:54:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[Employees_by_firstnames]
@fn nvarchar(30)
as
BEGIN
	Select * from Employee where firstname = @fn

END
