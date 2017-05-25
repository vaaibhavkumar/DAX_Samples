# SQLQuestions
Source of all questions: https://www.toptal.com/sql/interview-questions
Intent is to have a ready reference of trick questions
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
