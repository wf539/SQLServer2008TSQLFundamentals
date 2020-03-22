CREATE FUNCTION dbo.UsersClassifier()
RETURNS SYSNAME WITH SCHEMABINDING
AS
	BEGIN
	RETURN(SELECT CASE SUSER_SNAME()
		WHEN 'Sales' THEN 'Sales'
		WHEN 'Accounts' THEN 'Accounts'
		ELSE 'default_operations'
		END);
	END
GO