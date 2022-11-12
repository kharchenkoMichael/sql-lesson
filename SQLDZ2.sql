CREATE DATABASE MyFunkDB;
USE MyFunkDB;



CREATE TABLE Users(
Id INT PRIMARY KEY IDENTITY(1,1),
Name NVARCHAR(20),
Phone NVARCHAR(20)
);


CREATE TABLE SalaryUsers(
Id INT PRIMARY KEY IDENTITY(1,1),
Salary MONEY,
Rank NVARCHAR(20),
UserId INT,
FOREIGN KEY (UserId) REFERENCES Users(Id)
);


CREATE TABLE PasportUsers(
Id INT PRIMARY KEY IDENTITY(1,1),
MaritalStatus NVARCHAR(50),
DateOfBirth NVARCHAR(50),
City NVARCHAR(50)
);



INSERT INTO Users
values
('Katya','0980001122'),
('Masha','0931113344'),
('Egor','0986542111'),
('John','0934447676'),
('Kevin','0935617768')



INSERT INTO SalaryUsers
values
('3000','Manager',1),
('1000','Worker',2),
('1500','Worker',3),
('2500','Manager',4),
('5000','Director',5)



INSERT INTO PasportUsers
values
('Married','08/12/1995'),
('Not Married','15/03/2003'),
('Not Married','29/07/2005'),
('Married','09/05/1995'),
('Married','23/02/1990')


Select * From Users
JOIN SalaryUsers on Users.Id = SalaryUsers.UserId


DROP TRIGGER UsersInsertUpdate
CREATE TRIGGER UsersInsertUpdate ON Users AFTER INSERT,UPDATE
as
UPDATE Users 
SET Phone = '0000000000'
where LEN(Phone) != 10

INSERT INTO Users
values
('Valya','09800011'),
('Galya','093111334'),
('Vanya','098654211122'),
('Danya','0934447676'),
('Jenya','0935617768')
Select * From Users