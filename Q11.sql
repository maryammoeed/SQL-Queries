/*------Question 11------*/
SELECT o.Name, COUNT(*) AS num_planes_owned
FROM OWNER o
JOIN OWNS os ON o.ID = os.OWNER_ID
JOIN AIRPLANE a ON os.AIRPLANE_RegNum = a.Reg#
GROUP BY o.Name
ORDER BY num_planes_owned DESC;