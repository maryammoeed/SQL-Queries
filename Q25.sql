/*------Question 25------*/
/*This query is written to keep a count of the number of owners of the airplane*/
SELECT OWNS.OWNER_ID, COUNT(OWNS.OWNER_ID) AS 'PLANES_OWNED'
FROM OWNS
GROUP BY OWNS.OWNER_ID
ORDER BY PLANES_OWNED DESC;


/*This query is used to find the names and addresses of the corporations that own the airplanes*/
SELECT DISTINCT Name, Address
FROM OWNER
WHERE ID IN (SELECT DISTINCT OWNS.OWNER_ID FROM OWNS JOIN AIRPLANE ON OWNS.AIRPLANE_RegNum = AIRPLANE.Reg# JOIN PLANE_TYPE ON AIRPLANE.OF_TYPE = PLANE_TYPE.Model WHERE PLANE_TYPE.Capacity > 0)

/*this query is written to find the average maintenance hours of each airplane*/
SELECT PLANE_TYPE.Model, AVG(SERVICE.Hours) AS 'Avg_hours_of_maintenance'
FROM AIRPLANE
JOIN PLANE_TYPE ON AIRPLANE.OF_TYPE = PLANE_TYPE.Model
JOIN MAINTAIN ON AIRPLANE.Reg# = MAINTAIN.SERVICE_ID
JOIN SERVICE ON AIRPLANE.REG# = SERVICE.ID
GROUP BY PLANE_TYPE.Model;

/*to find the names amd addresses of people who have never owned airplanes this query will be written*/
SELECT Name, Address
FROM OWNER
WHERE NOT EXISTS 
(SELECT *
FROM OWNS
WHERE OWNER.ID = OWNS.OWNER_ID);

