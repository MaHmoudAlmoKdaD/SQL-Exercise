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