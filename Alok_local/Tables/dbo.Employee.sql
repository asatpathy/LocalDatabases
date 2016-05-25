CREATE TABLE [dbo].[Employee]
(
[EmployeeID] [int] NOT NULL IDENTITY(1, 1),
[EmployeeName] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Email] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Country] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[State] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[City] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ZipCode] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Employee] ADD CONSTRAINT [PK__Employee__7AD04FF1ADBF4FBA] PRIMARY KEY CLUSTERED  ([EmployeeID]) ON [PRIMARY]
GO
