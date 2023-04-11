/*------Question 12------*/
SELECT Model, AVG(S.Hours) AS 'AVG_Maintenance '
FROM PLANE_TYPE
JOIN AIRPLANE AS A ON A.OF_TYPE = PLANE_TYPE.Model
JOIN SERVICE AS S ON S.ID = A.Reg#
GROUP BY PLANE_TYPE.Model;
