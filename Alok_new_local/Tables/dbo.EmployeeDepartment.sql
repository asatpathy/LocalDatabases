CREATE TABLE [dbo].[EmployeeDepartment]
(
[EmployeeID] [int] NOT NULL,
[DepartmentID] [int] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[EmployeeDepartment] ADD CONSTRAINT [FK__EmployeeD__Emplo__1A14E395] FOREIGN KEY ([EmployeeID]) REFERENCES [dbo].[Employee] ([EmployeeID])
GO
ALTER TABLE [dbo].[EmployeeDepartment] ADD CONSTRAINT [FK_EmployeeDepartment] FOREIGN KEY ([DepartmentID]) REFERENCES [dbo].[Department] ([DepartmentID])
GO
