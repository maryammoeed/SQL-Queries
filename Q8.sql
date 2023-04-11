/*------Question 8------*/
SELECT Name,PhoneNumber 
FROM OWNER AS O 
JOIN OWNS AS OW ON O.ID=OW.OWNER_ID
--WHERE OW.Pdate LIKE '2023-02-%'
WHERE DATEPART(m, Pdate) = DATEPART(m, DATEADD(m, -1, getdate()))
AND DATEPART(yyyy, Pdate) = DATEPART(yyyy, DATEADD(m, -1, getdate()))
