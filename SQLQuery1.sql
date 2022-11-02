CREATE TABLE Users (
    Id INT NOT NULL ,
    Name NVARCHAR(MAX),
    Age INT
);

CREATE TABLE PROCEDURS (
  Id Int Not Null,
  Name NVARCHAR (MAX),
  Price Int
  );

ALTER TABLE Users 
Add IsAdmin Bit;

Alter table PROCEDURS 
Drop COLUMN Price;

Drop table PROCEDURS;

Insert INTO Users 
(Id, Name, Age) 
Values 
(1, 'Misha', 24),
(2, 'Masha', 18),
(3, 'Katya', 8),
(4, 'Glib', 58),
(5, 'Sasha', 31),
(6, 'Vova', 37),
(7, 'Vlad', 21),
(8, 'Varonika', 27),
(9, 'Vera', 14),
(10, 'Vika', 4);

Select * From Users;

Update Users
Set IsAdmin = 1
where Age > 30

Update Users
Set IsAdmin = 0
where Age <= 30

Delete Users
where Age < 18;