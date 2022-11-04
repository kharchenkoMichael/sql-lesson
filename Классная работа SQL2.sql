CREATE DATABASE Games;
USE Games;
CREATE TABLE Users(
Id INT PRIMARY KEY IDENTITY(1,1),
Name NVARCHAR(MAX),
Age INT,
Phone NVARCHAR(MAX)
);
CREATE TABLE Games(
Id INT PRIMARY KEY IDENTITY(1,1),
Name NVARCHAR(MAX),
Price MONEY,
Genre NVARCHAR(MAX)
);
CREATE TABLE Orders(
Id INT PRIMARY KEY IDENTITY(1,1),
UsersId INT,
GamesId INT,
FOREIGN KEY (UsersId) REFERENCES Users(Id),
FOREIGN KEY (GamesId) REFERENCES Games(Id)
);

INSERT INTO Users
(Name,Age,Phone)
values
('Misha', 24,'0980023344'),
('Jenya',27,'0980023111'),
('Katya',23,'0939871234'),
('Egor',18,'0982223455'),
('Sasha',22,'0937771122')



INSERT INTO Games
(Name,Price,Genre)
values
('Cossaks',50,'Strategy'),
('Call of Duty',150,'Action'),
('World of Warcraft',200,'MMO'),
('Dota2',300,'Strategy'),
('Counter-Strike',500,'Action')

INSERT INTO Orders
(UsersId,GamesId)
values
(1,2),
(2,5),
(3,4),
(4,3),
(2,2)

Select * From Users 
Select * From Games
Select * From Orders

Select Users.Name,Games.Name From Users 
FULL OUTER JOIN Orders on Users.Id = Orders.UsersId
FULL OUTER JOIN Games on Games.Id = Orders.GamesId

