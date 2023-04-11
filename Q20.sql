/*------Question 20------*/
SELECT OF_TYPE AS 'Plane Type',Count(OF_TYPE) AS 'Total # Planes'
FROM AIRPLANE 
Group by OF_TYPE
