USE SEDCACADEMYDB

--All Students with first name Antonio

SELECT * FROM Student
WHERE FirstName = 'Antonio'

--All Students with date of birth greater than ‘01.01.1999’

SELECT * FROM Student
WHERE DateOfBirth > '1999-01-01'

--All Students with last name starting With ‘J’ enrolled in January/1998

SELECT * FROM Student
WHERE LastName like 'J%' and EnrolledDate between '1998-01-01' and '1998-01-31'

--All Students ordered by FirstName

SELECT * FROM Student
ORDER BY FirstName ASC

--All Teacher last name and students last names in single result set + Remove  duplicates

SELECT [LastName]
FROM Teacher
UNION 
SELECT [LastName]
FROM Student

--Foreign key constraints from diagram or with script

ALTER TABLE [dbo].[Grade] WITH CHECK
ADD CONSTRAINT [FK_Grade_Student]
FOREIGN KEY ([StudentId])
REFERENCES [dbo].[Student] ([Id])

--All possible combinations of courses names and achievement type names that can be passed by student

SELECT C.Name, A.Name FROM Course AS C
CROSS JOIN AchievementType AS A

--All teachers without exam grade

SELECT * FROM Teacher AS T
LEFT JOIN Grade AS G
ON T.Id = G.Grade
WHERE G.Id IS NULL
