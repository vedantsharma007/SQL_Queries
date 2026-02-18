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
 

Write a solution to delete all duplicate emails, keeping only one unique email with the smallest id.
*/
DROP TABLE IF EXISTS Person;
CREATE TABLE Person (
    id INT PRIMARY KEY,
    email VARCHAR(100)
);

INSERT INTO Person VALUES
(1, 'john@example.com'),
(2, 'bob@example.com'),
(3, 'john@example.com');


DELETE p1 FROM Person p1 JOIN Person p2 ON p1.id>p2.id
WHERE p1.email=p2.email
