CREATE OR ALTER PROCEDURE CONVERTCELSIUSTOFAHRENHEIT
@celsius real
as
select @celsius*1.8+32 as Fahrenheit
GO 

CREATE OR ALTER PROCEDURE SELECTRECENTHIRES
as
SELECT 
 TOP(5)
 CONCAT(FirstName, ' ', LastName)
  AS FullName,
  HireDate
FROM Employees
ORDER BY HireDate;