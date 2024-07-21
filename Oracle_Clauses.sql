select * from customers;

select distinct city, age
from customers
where name = 'thuan';

//From Clause
SELECT *  
FROM customers  
WHERE age >= 10  
ORDER BY name ASC; 

select * from students;

SELECT customers.id, customers.name, students.student_address 
FROM customers  
INNER JOIN students  
ON customers.id = students.student_id;  

//Order by: sap xep lai ket qua
SELECT *  
FROM customers  
ORDER BY name DESC;  


//Group by: Nhom ket qua theo 1 hoac nhieu cot
SELECT name, SUM(age) AS "Total age"  
FROM customers  
GROUP BY name;  


SELECT name, count(*) AS "Number of customers"  
FROM customers  
GROUP BY name;  

SELECT name, min(age) AS "Min age"  
FROM customers  
GROUP BY name;


SELECT name, max(age) AS "Min age"  
FROM customers  
GROUP BY name;


//Having: duoc su dung voi group by de han che cac nhom hang tra ve trong do dieu kien laf true

--SELECT expression1, expression2, ... expression_n,   
-- aggregate_function (aggregate_expression)  
--FROM tables  
--WHERE conditions  
--GROUP BY expression1, expression2, ... expression_n  
--HAVING having_condition;

SELECT name, SUM(age) AS "Total age"  
FROM customers  
GROUP BY name
having Sum(age) > 19;


SELECT name, count(*) AS "Number of customers"   
FROM customers  
GROUP BY name
having count(*) > 1;

SELECT name, min(age) AS "Min age"  
FROM customers  
GROUP BY name
having min(age) < 19;


SELECT name, max(age) AS "Min age"  
FROM customers  
GROUP BY name
having max(age) < 20;
