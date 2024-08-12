CREATE OR ALTER PROCEDURE CONVERTCELSIUSTOFAHRENHEIT
@celsius real
as
select @celsius*1.8+32 as Fahrenheit
GO 

exec CONVERTCELSIUSTOFAHRENHEIT 0 

GO

-- View all existing procedures
EXEC sp_stored_procedures;
GO

-- Stored procedure to report on table
USE Northwind
GO

SELECT 
TOP(5)
 EmployeeID,
 CONCAT(LastName, FirstName)
  AS FullName
FROM Employees
ORDER BY HireDate;

-- CREATE OR ALTER PROCEDURE getNewEmployees
-- @celsius real
-- as
-- select @celsius*1.8+32 as Fahrenheit
-- GO 