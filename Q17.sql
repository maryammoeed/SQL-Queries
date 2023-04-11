/*------Question 17------*/
SELECT airplane.Reg#, OWNER.Name
FROM airplane
LEFT JOIN owns ON airplane.Reg# = owns.AIRPLANE_RegNum
LEFT JOIN owner ON owns.OWNER_ID = owner.ID
LEFT JOIN maintain ON airplane.OF_TYPE = maintain.SERVICE_ID
LEFT JOIN employee ON maintain.EMPLOYEE_ID = employee.ID
LEFT JOIN corporation ON owner.ID = corporation.ID
WHERE corporation.ID IS NULL AND (OWNER.Type='Individual' OR OWNER.Type IS NULL)
AND employee.Shift != 'Day'
