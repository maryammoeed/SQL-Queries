/*------Question 9------*/
SELECT PILOT.ID, COUNT(*) AS 'AIRPLANE AUTHORIZED TO FLY'
FROM PILOT
JOIN FLIES ON PILOT.ID = FLIES.PILOT_ID
GROUP BY PILOT.ID;