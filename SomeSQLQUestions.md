# SQLQuestions
Source of all questions and the answer: https://www.toptal.com/sql/interview-questions
Intent is to have a ready reference of good SQL questions for revision as per my understanding for my personal use. Shall be moved from here once I am more comfortable with .md files
## 1 Read Slowly and Carefully
Given the following tables:sql> SELECT * FROM runners;
+----+--------------+
| id | name         |
+----+--------------+
|  1 | John Doe     |
|  2 | Jane Doe     |
|  3 | Alice Jones  |
|  4 | Bobby Louis  |
|  5 | Lisa Romero  |
+----+--------------+
sql> SELECT * FROM races;
+----+----------------+-----------+
| id | event          | winner_id |
+----+----------------+-----------+
|  1 | 100 meter dash |  2        |
|  2 | 500 meter dash |  3        |
|  3 | cross-country  |  2        |
|  4 | triathalon     |  NULL     |
+----+----------------+-----------+
What will be the result of the query below?
##SELECT * FROM runners WHERE id NOT IN (SELECT winner_id FROM races)
Explain your answer and also provide an alternative version of this query that will avoid the issue that it exposes.

## 2 Given these contents of the Customers table:
Id	Name			ReferredBy
1	John Doe		NULL
2	Jane Smith		NULL
3	Anne Jenkins		2
4	Eric Branford		NULL
5	Pat Richards		1
6	Alice Barnes		2
Here is a query written to return the list of customers not referred by Jane Smith:
SELECT Name FROM Customers WHERE ReferredBy <> 2;
<b>What will be the result of the query? Why? What would be a better way to write it?</b>
<b>Ans: Important Term / Concept is: SQL Server uses three-valued logic (True, False, Unknows), which can be troublesome for programmers accustomed to the more satisfying two-valued logic (TRUE or FALSE) </b>

## 3. Swapping values in SQL
Given a table SALARIES, such as the one below, that has m = male and f = female values. Swap all f and m values (i.e., change all f values to m and vice versa) with a single update query and no intermediate temp table.Id  Name  Sex  Salary
1   A     m    2500
2   B     f    1500
3   C     m    5500
4   D     f    500
<b>Answer on Website</b>: UPDATE SALARIES SET sex = CASE sex WHEN 'm' THEN 'f' ELSE 'm' END 
<b>I had thought</b>: UPDATE SALARIES SET SEX = REPLACE('mf',sex,'')

## 4 Write a SQL query to find the 10th highest employee salary from an Employee table. Explain your answer.
ANSWER ON WEBSITE: This can be done as follows:
SELECT TOP (1) Salary FROM   (SELECT DISTINCT TOP (10) Salary FROM Employee ORDER BY Salary DESC) AS Emp ORDER BY Salary
SOME RELATED INFORMATION FOR RANKING ETC.
SELECT TOP (1000) [EmployeeKey]      ,[FirstName]      ,[LastName]      ,[Gender]      ,[PayFrequency]
      ,[BaseRate]      ,[DepartmentName]
      , RANK() OVER  (PARTITION BY [DepartmentName] ORDER BY BASERATE) AS RANK_BASERATE_DEPARTMENT  --(Repeating ranks with discontinous sequence in the result --> Values were 1 1 3 3 5 in sample department)
      , RANK() OVER  (ORDER BY BASERATE) AS RANK_BASERATE_OVERALL 
	  , DENSE_RANK() OVER (PARTITION BY [DepartmentName] ORDER BY BASERATE) AS DENSERANK_BASERATE_OVERALL --(Repeating ranks with continous sequence in the result --> Values were 1 1 2 2 3 in sample department)	
	  , ROW_NUMBER() OVER (PARTITION BY [DepartmentName] ORDER BY BASERATE) AS ROWNUMBER_BASERATE_IN_DEPARTMENT--(Continous and non Repeating row number BUT Row Number starts from 1 when department changes)  
	  , ROW_NUMBER() OVER (ORDER BY BASERATE) AS ROWNUMBER_BASERATE_OVERALL  --(Continous and NON REPEATING ROW_NUMBER)
	    FROM [AdventureWorksDW2012].[dbo].[DimEmployee] 
		ORDER BY [DepartmentName],RANK_BASERATE_DEPARTMENT
