--1.	Combine Two Tables
--(1)	使用OUTER JOIN处理只有人名没地址的情况
SELECT Person.FirstName, Person.LastName, Address.City, Address.State FROM Person
LEFT JOIN Address ON Person.PersonID = Address.PersonID

--2.	Second Highest Salary
--(1)	使用SELECT嵌套，处理没有第二高的工资，输出NULL
--(2)	使用DISTICNT，处理只有两个人有工资，工资还相同，也没有第二高的工资
--(3)	使用OFFSET，从第二位开始数LIMIT
SELECT(
    SELECT DISTINCT Salary FROM Employee
    ORDER BY Salary DESC
    LIMIT 1 OFFSET 1
) AS SecondHighestSalary
