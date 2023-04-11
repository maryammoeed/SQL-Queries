/*------Question 22------*/
SELECT DISTINCT shift as 'Shift',avg(salary) as 'AVG SAL'
from Employee
Group by Shift