/*------Question 4------*/
SELECT c.Name, c.Address
FROM CORPORATION c
JOIN OWNER o ON c.ID = o.ID
JOIN OWNS ow ON o.ID = ow.OWNER_ID
JOIN AIRPLANE a ON ow.AIRPLANE_RegNum = a.Reg#
JOIN PLANE_TYPE pt ON a.OF_TYPE = pt.Model
WHERE pt.Capacity > 200;
