0- SELECT * FROM students;
---------------------------------------
1- SELECT Name FROM students;
---------------------------------------
2- SELECT * FROM students
WHERE Age > 30;
---------------------------------------
3- SELECT * FROM students
WHERE Age = 30 AND Gender ='F';
---------------------------------------
4- SELECT Points FROM students
WHERE Name = 'Alex';
---------------------------------------
5- INSERT INTO students VALUES(7, 'Mahmoud', 27, 'M', 1000);
---------------------------------------
6- UPDATE students
SET Points = 400
WHERE Name = 'Basma';
---------------------------------------
7- UPDATE students
SET Points = 150
WHERE Name = 'Alex';
_______________________________________________________________


CREATING TABLE:

- CREATE TABLE graduates(
   ID INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
   Name           TEXT      NOT NULL UNIQUE,
   Age            INT,
   Gender        TEXT,
   Points         INTEGER,
   Graduation     TEXT
);
--------------------------------------
1- INSERT INTO graduates(ID, Name, Age, Gender, Points)
SELECT ID, Name, Age, Gender, Points FROM students
WHERE Name = 'Layal';
--------------------------------------
2- UPDATE graduates
SET Graduation = '08/09/2018';
--------------------------------------
3- DELETE FROM students
WHERE Name = 'Layal';
_______________________________________________________________


JOIN:
1- SELECT employees.Name, companies.Name, companies.Date FROM employees, Companies
WHERE employees.Company = companies.Name;
-------------------------------------
2- SELECT employees.Name FROM employees, Companies
WHERE employees.Company = companies.Name;
AND companies.Date < 2000;
-------------------------------------
3- SELECT companies.Name FROM  Companies, employees
WHERE employees.Company = companies.Name;
AND employees.Role = 'Graphic Designer';
_______________________________________________________________


Count & Filter:

1- SELECT Name from students
WHERE Points = (SELECT max(points) FROM students);
-----------------------------------
2- SELECT avg(points) 'Average Of Points' FROM students;
-----------------------------------
3- SELECT count(Name) 'Count OF Student Equal 500' FROM students
WHERE Points = 500;
----------------------------------
4- SELECT Name FROM students
WHERE Name like 's%'
OR Name like '%s%'
OR Name like '%s';
----------------------------------
5- SELECT * FROM students
ORDER BY Points DESC;
_______________________________________________________________