IF NOT EXISTS (SELECT * FROM master.dbo.syslogins WHERE loginname = N'testlogin')
CREATE LOGIN [testlogin] WITH PASSWORD = 'p@ssw0rd'
GO
CREATE USER [testlogin] FOR LOGIN [testlogin]
GO
