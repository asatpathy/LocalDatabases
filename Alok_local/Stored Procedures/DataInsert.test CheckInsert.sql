SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
--  Comments here are associated with the test.
--  For test case examples, see: http://tsqlt.org/user-guide/tsqlt-tutorial/
CREATE PROCEDURE [DataInsert].[test CheckInsert]
AS
BEGIN TRAN CHECKINSERT

DECLARE @RowInserted INT

INSERT INTO Department
        ( [DepartmentName] )
VALUES  ( 'DummyDepartment'  -- DepartmentName - varchar(20)
          )

IF @@ERROR <> 0
	BEGIN
		SET @RowInserted = 0
		PRINT N'Insert failed'

	END
ELSE
	BEGIN
		SET @RowInserted = 1
		ROLLBACK TRAN CHECKINSERT
	END

  EXEC tSQLt.AssertEquals @Expected = 1,
                 @Actual = @RowInserted,
				 @Message = N'The row could not be inserted, check for changes in schema'

GO
