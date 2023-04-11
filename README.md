***Question 1:*** 

In the ERD, according to the given case study we have the following ENTITIES: AIRPLANE, EMPLOYEE, PLANE\_TYPE, OWNER, PERSON, CORPORATION, PILOT, HANGAR, SERVICE

The connections, FLIES, is\_of\_type, Claims, Stored\_in, works\_on, keep up with and plane\_service are completely given for the situation study. Plane\_service and Keep up with are distinguishing connections as they are among Plane and Administration elements and Worker and Administration substances separately, and the element Administration is a powerless substance since it relies upon the presence of a plane. Proprietor Is an association subclass of individual and partnership since proprietor can be both of these, and since pilot and workers are individual and not a company to that end they have an association relationship with Individual element.

- AIRPLANE and PILOT have a 1 to many relationship
- HANGAR and AIRPLANE have a 1 to many relationship too
- AIRPLANE and PLANE\_TYPE have a 1 to many relationship too
- AIRPLANE and OWNER have a many to many relationship
- PLANE\_TYPE and PILOT have many to many relationship 
- AIRPLANE and SERVICE have a 1 to many relationship 
- PLANE\_TYPE and EMPLOYEE have a many to many relationship
- EMPLOYEE and SERVICE have many to many relationship


















***Question 2:***

Database tables created:

1. Airplane 
1. Pilot 
1. Flies 
1. Service 
1. Plane\_service 
1. Plane\_type
1. Hangar 
1. Owner 
1. Maintain
1. Works\_on 
1. Owns 
1. Employee

The Plane table ought to have Reg# as the essential key and unfamiliar keys referring to Plane\_type and Shed tables. The Plane\_type table ought to have Model as the essential key and characteristics including Limit and Weight. The Overhang table ought to have Number as the essential key and properties including Limit and Area. The Proprietor table ought to have Owner\_id as the essential key and properties including Type (individual or company), Name, Address, and Telephone. The Possesses table ought to have unfamiliar keys referring to Plane and Proprietor tables and pdate characteristic. The Representative table ought to have Ssn as the essential key and characteristics including Name, Address, Telephone, Compensation (if worker), and Shift (if worker). The Pilot table ought to have Lic\_num as the essential key, an unfamiliar key referring to the Worker table, and a property Restr. The Flies table ought to have unfamiliar keys referring to Pilot and Plane\_type tables. The Help table ought to have Service\_id as the essential key and properties including Date, Hours, and Work\_code. The Plane\_service table ought to have unfamiliar keys referring to Plane and Administration tables. The Keep up with table ought to have unfamiliar keys referring to Representative and Administration tables. The Works\_on table ought to have unfamiliar keys referring to Representative and Plane\_type tables.









**QUESTION: 3**

This is a SQL code that selects information from two tables, AIRPLANE and MAINTAIN, using a LEFT JOIN operation to find records where there is no matching data in the MAINTAIN table. Here's a breakdown of what each part of the code does:

SELECT AIRPLANE.OF\_TYPE,AIRPLANE.Reg#,AIRPLANE.STORED\_IN

This line selects three columns from the AIRPLANE table: OF\_TYPE, Reg#, and STORED\_IN. These columns contain information about the type of airplane, its registration number, and where it is stored.

FROM AIRPLANE

LEFT JOIN MAINTAIN ON AIRPLANE.Reg# = MAINTAIN.SERVICE\_ID

This line specifies the tables being used and performs a LEFT JOIN operation. This means that all records from the AIRPLANE table will be included, even if there is no matching record in the MAINTAIN table. The join is based on the Reg# column in the AIRPLANE table and the SERVICE\_ID column in the MAINTAIN table.

WHERE MAINTAIN.SERVICE\_ID IS NULL;

![](Aspose.Words.4902dca3-e1db-4d6a-89b2-a9ff7e3d43d8.001.jpeg)This line filters the results to only include records where there is no matching data in the MAINTAIN table. The condition **MAINTAIN.SERVICE\_ID IS NULL** checks whether there is no data in the SERVICE\_ID column of the MAINTAIN table. This means that the airplane has not been serviced or maintained, and the information in the selected columns is still up to date.









**QUESTION: 4**

This query retrieves the Name and Address columns from the CORPORATION table, joins it with four other tables to filter the result set to only include airplanes with a capacity greater than 200.





![](Aspose.Words.4902dca3-e1db-4d6a-89b2-a9ff7e3d43d8.002.png)




















**QUESTION: 5**

![](Aspose.Words.4902dca3-e1db-4d6a-89b2-a9ff7e3d43d8.003.jpeg)This was a simple query, used to calculate the average salary of employees that work the night shift. No challenges were faced while writing this query.

























**QUESTION: 6**

This code retrieves the top 5 employees with the highest total hours worked in maintenance services. It joins three tables: EMPLOYEE, MAINTAIN, and SERVICE, using their respective IDs. The challenge faced was missing data, such as null values, which resulted in incorrect or incomplete results. To avoid this, one solution I used was to use appropriate data types and to ensure that all tables have complete and accurate data. Another solution could be to add appropriate error handling to account for any potential missing or incorrect data.


![Graphical user interface

Description automatically generated with low confidence](Aspose.Words.4902dca3-e1db-4d6a-89b2-a9ff7e3d43d8.004.jpeg)





















**QUESTION: 7**

This SQL query retrieves the registration number and model of airplanes that have undergone maintenance within the last seven days. The query uses several JOIN statements to join different tables based on their common columns.

Ensuring that the join conditions are correct and that the columns being selected are present in the correct tables. In addition, using the correct date format and ensuring that the current date is being calculated correctly was a challenge.








![Text

Description automatically generated with low confidence](Aspose.Words.4902dca3-e1db-4d6a-89b2-a9ff7e3d43d8.005.jpeg)















**QUESTION: 8**

This SQL code retrieves the Name and PhoneNumber of owners who made a purchase in the previous month (i.e., the month before the current month). The code selects data from the tables OWNER and OWNS, where OWNER.ID is equal to OWNS.OWNER\_ID. The WHERE clause uses the DATEPART function to extract the month and year from the Pdate column in OWNS table, and compare them with the previous month and year, respectively.

One challenge I faced in this code was the accuracy of the date comparison, which relies on the system date obtained from GETDATE() function.

![](Aspose.Words.4902dca3-e1db-4d6a-89b2-a9ff7e3d43d8.006.jpeg)





















**QUESTION: 9**

This is a SQL query that retrieves the number of airplanes that each pilot is authorized to fly. It does this by joining the "PILOT" and "FLIES" tables on the pilot ID, and then grouping the results by pilot ID. The query uses the COUNT(\*) function to count the number of airplanes each pilot is authorized to fly.

This query was pretty simple and no challenges were faced while writing it.


![](Aspose.Words.4902dca3-e1db-4d6a-89b2-a9ff7e3d43d8.007.jpeg)





















**QUESTION: 10**

This SQL code selects the top 1 row from the "HANGAR" table, displaying the "Location" and "Capacity" columns. The results will be ordered by "Capacity" in descending order. This means that the largest capacity hangar will be selected.

This code was pretty simple to write and no challenges were faced while writing it.

![](Aspose.Words.4902dca3-e1db-4d6a-89b2-a9ff7e3d43d8.008.jpeg)























**QUESTION: 11**

This SQL query retrieves the number of airplanes owned by each owner, sorted by the number of planes in descending order. It joins the tables OWNER, OWNS, and AIRPLANE to get the necessary data, and groups the result by the owner's name.

Making sure that the grouping and ordering of the result were done correctly and also applying the correct of join conditions was a challenge.


![](Aspose.Words.4902dca3-e1db-4d6a-89b2-a9ff7e3d43d8.009.jpeg)





















**QUESTION: 12**

This SQL code retrieves the average maintenance hours for each airplane model by joining the PLANE\_TYPE, AIRPLANE, and SERVICE tables and grouping the results by the model. The code uses the AVG() function to calculate the average maintenance hours.

One challenge that arose was missing or incorrect values in the tables being joined, which lead to inaccurate or incomplete results. To ensure the accuracy of the results, I had to validate the data in the tables before running the query. Additionally, I had to ensure that the table joins are correctly specified to retrieve the relevant data.


![](Aspose.Words.4902dca3-e1db-4d6a-89b2-a9ff7e3d43d8.010.jpeg)




















**QUESTION: 13**

This code is a SQL query that retrieves the distinct names of owners who have owned airplanes that have been serviced by an employee who has worked on a different type of airplane than the one they are certified to work on.

It's important to carefully check the syntax and semantics of the SQL code, as well as the structure and integrity of the database. This can involve reviewing the schema and data types, checking for data inconsistencies or errors, and testing the query on a representative sample of the data to ensure that it produces accurate and meaningful results.




![](Aspose.Words.4902dca3-e1db-4d6a-89b2-a9ff7e3d43d8.011.jpeg)


















**QUESTION: 14**

This SQL query retrieves the names and phone numbers of all company owners who own airplanes parked in a hangar at their address. It does so by joining three tables: OWNER, HANGAR, and OWNS. It filters the results to only include owners who are companies, and matches the airplane's registration number with the hangar number and the owner's address.


![](Aspose.Words.4902dca3-e1db-4d6a-89b2-a9ff7e3d43d8.012.jpeg)






















**QUESTION: 15**

This SQL code retrieves the distinct names of pilots who have flown an airplane of a specific model that is currently stored in a hangar and also underwent maintenance service. The code joins several tables, including PERSON, FLIES, AIRPLANE, MAINTAIN, and HANGAR, and uses subqueries to filter the results based on specific conditions.

![](Aspose.Words.4902dca3-e1db-4d6a-89b2-a9ff7e3d43d8.013.jpeg)No challenges were faced while writing this query









**QUESTION: 16**

This SQL query selects the names of employees and their total hours spent servicing airplanes owned by John Smith, ordered in descending order of total hours.

The main challenge with this code was the correctness of the table relationships and column names used in the joins and selects.

To ensure correctness, we had to check the table relationships and column names before running the query. Also, we had 

to understand the requirements of the query to ensure that the right data is selected and aggregated appropriately.

![](Aspose.Words.4902dca3-e1db-4d6a-89b2-a9ff7e3d43d8.014.jpeg)



















**QUESTION: 17**

This SQL code performs a left join between multiple tables (airplane, owns, owner, maintain, employee, and corporation) to retrieve the registration number of airplanes that are not owned by any corporation, are owned by individuals or the owner's type is not specified, and are not maintained by employees working on day shift. The challenge was to ensure the correct naming of the tables and their columns as well as to optimize the query for performance. One solution to optimize the query is to add indexes on the columns used in the join conditions and where clauses.

![](Aspose.Words.4902dca3-e1db-4d6a-89b2-a9ff7e3d43d8.015.jpeg)




**QUESTION: 18**

This SQL code retrieves a list of distinct owner names and addresses who have airplanes of the same plane type owned by a corporation that also owns airplanes of the same plane type. The data is obtained through inner joins on several tables, including OWNER, OWNS, AIRPLANE, PLANE\_TYPE, and CORPORATION, with some filtering conditions.

I faced the challenge of ambiguous column names, which could lead to incorrect or unexpected results

![](Aspose.Words.4902dca3-e1db-4d6a-89b2-a9ff7e3d43d8.016.jpeg)



**QUESTION: 19**

This SQL code selects the number of each hangar and the total number of airplanes stored in each hangar. It uses a LEFT JOIN to include all the hangars even if they do not have any planes stored in them.

This code was pretty simple to write and no challenges were faced while writing it.

![](Aspose.Words.4902dca3-e1db-4d6a-89b2-a9ff7e3d43d8.017.jpeg)



**QUESTION: 20**

This SQL code selects the OF\_TYPE column from the AIRPLANE table and groups the results by the type of plane. It then counts the number of occurrences of each plane type and presents the results in a table with two columns: 'Plane Type' and 'Total # Planes'.

![](Aspose.Words.4902dca3-e1db-4d6a-89b2-a9ff7e3d43d8.018.jpeg)



**QUESTION: 21**

This code retrieves the average salary of all employees grouped by their respective shifts. The 'SELECT DISTINCT' statement is used to ensure that only unique values are returned for the 'Shift' column. The 'GROUP BY' statement is used to group the data by 'Shift' before applying the aggregate function 'AVG' to calculate the average salary for each group.

![](Aspose.Words.4902dca3-e1db-4d6a-89b2-a9ff7e3d43d8.019.jpeg)


**QUESTION: 22**

This code retrieves the average salary of all employees grouped by their respective shifts. The 'SELECT DISTINCT' statement is used to ensure that only unique values are returned for the 'Shift' column. The 'GROUP BY' statement is used to group the data by 'Shift' before applying the aggregate function 'AVG' to calculate the average salary for each group.

![](Aspose.Words.4902dca3-e1db-4d6a-89b2-a9ff7e3d43d8.020.jpeg)







**QUESTION: 23**

This SQL code selects the name of the owner and the total number of planes they own by joining three tables: OWNER, OWNS, and AIRPLANE. The INNER JOINs are used to join the tables based on their IDs and Registration Numbers, and the GROUP BY clause is used to group the results by the owner's name.

![](Aspose.Words.4902dca3-e1db-4d6a-89b2-a9ff7e3d43d8.021.jpeg)



**QUESTION: 24**

This code selects the pilot IDs and the number of authorized planes they are allowed to fly, by joining two tables - "PILOT" and "FLIES" - and grouping the results by the pilot's ID.

![](Aspose.Words.4902dca3-e1db-4d6a-89b2-a9ff7e3d43d8.022.jpeg)





**QUESTION: 25**

This code performs a SQL query to count the number of planes owned by each owner in a database table called "OWNS". The result is sorted in descending order based on the number of planes owned by each owner.

![](Aspose.Words.4902dca3-e1db-4d6a-89b2-a9ff7e3d43d8.023.jpeg)

The queries 21-24 were pretty easy and no challenges were faced while writing these.
