/*------Question 24------*/
SELECT P.ID as PilotID, COUNT(*) as NumAuthorizedPlanes
FROM PILOT AS P
JOIN FLIES AS F ON P.ID = F.PILOT_ID
GROUP BY P.ID;
