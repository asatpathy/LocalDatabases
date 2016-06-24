CREATE TABLE [dbo].[Department]
(
[DepartmentID] [int] NOT NULL IDENTITY(1, 1),
[DepartmentName] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Dummy] [int] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Department] ADD CONSTRAINT [PK_Department] PRIMARY KEY CLUSTERED  ([DepartmentID]) ON [PRIMARY]
GO
