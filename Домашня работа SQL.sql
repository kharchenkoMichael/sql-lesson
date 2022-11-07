CREATE DATABASE MyJoinDB;
USE MyJoinDB;

CREATE TABLE UserCompany(
Id INT PRIMARY KEY IDENTITY(1,1),
Name NVARCHAR(MAX),
Phone NVARCHAR(MAX)
);


CREATE TABLE SalaryUser(
Id INT PRIMARY KEY IDENTITY(1,1),
Name NVARCHAR(MAX),
Salary MONEY,
Rank NVARCHAR(MAX)
);


CREATE TABLE PasportUser(
Id INT PRIMARY KEY IDENTITY(1,1),
Name NVARCHAR(MAX),
FamilyStatus NVARCHAR(MAX),
DateOfBirth NVARCHAR(MAX),
City NVARCHAR(MAX)
);


INSERT INTO UserCompany
values
('Petrov.O.S.','0980001122'),
('Ivanov.K.P.','0980001333'),
('Sidorov.S.T.','0980005577'),
('Budyak.R.M.','0981011921'),
('Bychkov.B.V.','0980201066')


INSERT INTO SalaryUser
values
('Petrov.O.S.','1000','Manager'),
('Ivanov.K.P.','2000','Worker'),
('Sidorov.S.T.','3000','Worker'),
('Budyak.R.M.','4000','Manager'),
('Bychkov.B.V.','5000','Director')


INSERT INTO PasportUser
values
('Petrov.O.S.','Married','06.12.1980','Kiev'),
('Ivanov.K.P.','Not married','21.02.1993','Poltava'),
('Sidorov.S.T.','Married','07.07.1987','Kharkiv'),
('Budyak.R.M.','Married','22.08.1983','Lviv'),
('Bychkov.B.V.','Not married','28.03.2001','Odessa')



Select Phone,City From UserCompany
JOIN PasportUser on UserCompany.Name = PasportUser.Name


Select DateOfBirth From PasportUser
where FamilyStatus like 'Not married'

Select DateOfBirth,Phone,Rank From PasportUser
JOIN UserCompany on UserCompany.Name = PasportUser.Name
JOIN SalaryUser on SalaryUser.Name = UserCompany.Name
where SalaryUser.Rank like 'Manager'