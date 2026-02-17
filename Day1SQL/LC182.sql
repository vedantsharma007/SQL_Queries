/*
Table: Person

+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| id          | int     |
| email       | varchar |
+-------------+---------+
id is the primary key (column with unique values) for this table.
Each row of this table contains an email. The emails will not contain uppercase letters.
 

Write a solution to report all the duplicate emails. Note that it's guaranteed that the email field is not NULL.

Return the result table in any order.

The result format is in the following example.

 

Example 1:

Input: 
Person table:
+----+---------+
| id | email   |
+----+---------+
| 1  | a@b.com |
| 2  | c@d.com |
| 3  | a@b.com |
+----+---------+
Output: 
+---------+
| Email   |
+---------+
| a@b.com |
+---------+
Explanation: a@b.com is repeated two times.
*/

-- DROP TABLE IF EXISTS Person;
-- CREATE TABLE Person (
--     id INT PRIMARY KEY,
--     email VARCHAR(100)
-- );
-- INSERT INTO Person VALUES
-- (1, 'a@b.com'),
-- (2, 'c@d.com'),
-- (3, 'a@b.com');

-- **************** Solution *******************
-- SELECT DISTINCT p.email
-- FROM Person p
-- JOIN Person p2 
-- ON p.email = p2.email 
-- AND p.id > p2.id;

-- Alternative solution *******
SELECT email
FROM personGROUP BY email
HAVING COUNT(email)>1;