CREATE DATABASE HomeWork;
USE HomeWork;
CREATE TABLE Product (
ProdutId INT,
Name NVARCHAR(MAX),
ProductNumber NVARCHAR(MAX),
Cost Money,
Count INT,
SellStartDate NVARCHAR(MAX)
);
INSERT INTO Product
(Name,ProductNumber,Cost,Count,SEllStartDate)
Values
('Korona','AK-53818','5',50,'08/15/2011'), 
('Milka','AM-51122','6.1',50,'07/15/2011'), 
('Alenka','AA-52211','2.5',20,'06/15/2011'),  
('Snickers','BS-32118','2.8',50,'08/15/2011'),  
('Snickers','BSL-3818','5',100,'08/20/2011'),  
('Bounty','BB-38218','3',100,'08/01/2011'),  
('Nuts','BN-37818','3',100,'08/21/2011'),  
('Mars','BM-3618','2.5',50,'08/24/2011'),  
('Svitoch','AS-54181','5',100,'08/12/2011'),  
('Svitoch','AS-54182','5',100,'08/12/2011')

SELECT Name,ProductNumber,Cost,Count,SellStartDate From Product
where Count > 59

SELECT Name,ProductNumber,Cost,Count,SellStartDate From Product
where cost > 3 AND SellStartDate >= '08/20/2011'

UPDATE Product
SET Cost = '5.25'
where Name = 'Svitoch'


SELECT * From Product
