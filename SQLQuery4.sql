CREATE TABLE Departure(
Id INT PRIMARY KEY IDENTITY(1,1),
Name NVARCHAR(MAX),
Description NVARCHAR(MAX)
);





CREATE TABLE Employes(
Id INT PRIMARY KEY IDENTITY(1,1),
Name NVARCHAR(MAX),
Salary INT,
JobTitle NVARCHAR(MAX),
ManagerId INT NULL, 
DepartureId INT,
FOREIGN KEY (ManagerId) REFERENCES Employes(Id),
FOREIGN KEY (DepartureId) REFERENCES Departure(Id)
);









